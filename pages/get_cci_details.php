<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
	}

    include('../config/Database.php');
	$db = Database::getInstance();
	$mysqli = $db->getConnection();
    // var_dump($_POST);
    $cci_data = [];
    // Get CCI data
    $sql = "SELECT ROW_NUMBER() OVER (ORDER BY `cci`.`district`, `cci`.`run_by`, `cci`.`cci_name`, `cci_unit_types`.`category`, `cci`.`cci_unit_no`)
                sl_num, `cci`.`id`, `cci`.`district`, `cci`.`cci_name`,
                `cci`.`cci_unit_no`, `cci`.`cci_unit_gender`, `cci`.`run_by`, `cci_unit_types`.`category`, `cci`.`cci_unit_strength`,
                IF(`cci`.`is_pab_approved`, 'Yes', 'No'), `cci`.`reg_no`, DATE_FORMAT(`cci`.`reg_date`,'%d/%m/%Y'),
                DATE_FORMAT(`cci`.`reg_valid_upto`, '%d/%m/%Y')
            FROM `cci`
			JOIN `unit_types` ON `cci`.`id` = `unit_types`.`cci_id`
			JOIN `cci_unit_types` ON `unit_types`.`type_id` = `cci_unit_types`.`id`
            JOIN `cci_reg_file_status` ON `cci`.`reg_status` = `cci_reg_file_status`.`id`
            WHERE 1"
            . (isset($_SESSION['login'])? "" : " AND `cci_reg_file_status`.`id` NOT IN (6, 7)")
            . (empty($_POST['district']) ? "" : " AND `cci`.`district` = '" . $_POST['district'] . "'")
            . (empty($_POST['run_by']) ? "" : " AND `cci`.`run_by` = '" . $_POST['run_by'] . "'")
            . (empty($_POST['pab_approval']) ? "" : ($_POST['pab_approval'] == 'yes' ? " AND `cci`.`is_pab_approved` = true" : " AND `cci`.`is_pab_approved` = false"))
			. (empty($_POST['reg_valid_upto']) ? "" : " AND `cci`.`reg_valid_upto` <= '" . $_POST['reg_valid_upto'] . "'")
            . (empty($_POST['reg_file_status'])? "" : " AND `cci`.`reg_status` = '" . $_POST['reg_file_status']. "'")
            . ";";
    error_log($sql);
    $stmt = $mysqli->prepare($sql);
    if ($stmt === FALSE) {
        trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
        return null;
    }
    if ($stmt->execute()) {
        $cci = $stmt->get_result()->fetch_all(MYSQLI_NUM);
    } else {
        trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
        die(E_USER_ERROR);
    }
    echo json_encode(Array('ccidata' => $cci));