<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
	}

    include('../config/Database.php');
	$db = Database::getInstance();
	$mysqli = $db->getConnection();

    $data = $_POST['data'];
    $cci_data = [];
    $n_cci = 0;

    // Get CCI data
    $sql = "SELECT ROW_NUMBER() OVER (ORDER BY `cci`.`id`) sl_num, `cci`.`id`, `cci`.`district`, `cci`.`cci_name`, `cci`.`cci_unit_no`, `cci`.`cci_unit_gender`, `cci`.`run_by`, `cci_unit_types`.`category`, `cci`.`cci_unit_strength`, IF(`cci`.`is_pab_approved`, 'Yes', 'No'), `cci`.`reg_no`, DATE_FORMAT(`cci`.`reg_date`,'%d/%m/%Y'), DATE_FORMAT(`cci`.`reg_valid_upto`, '%d/%m/%Y')
			FROM `cci`
			JOIN `unit_types` ON `cci`.`id` = `unit_types`.`cci_id`
			JOIN `cci_unit_types` ON `unit_types`.`type_id` = `cci_unit_types`.`id`
			ORDER BY `cci`.`district`, `cci`.`cci_name`, `cci_unit_types`.`category`;";
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