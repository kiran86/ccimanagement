<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}


    if ( php_uname('s') != 'Darwin') {
        $fmt = new NumberFormatter('en_IN', NumberFormatter::CURRENCY);
        $cur = 'INR';
    }
    include('../config/DbFunction.php');
    $obj = new DbFunction();

	require_once('../config/Database.php');
	$db = Database::getInstance();
	$mysqli = $db->getConnection();

    $status = null;
    // Fetch POST data
    error_log(print_r($_POST, true));
    $cci_id = $_POST['cci_id'];
    $cci_colocated_with = $_POST['i_cci_colocated_with'];
    $district = $_POST['i_cci_dist'];
    $cci_name = $_POST['i_cci_name'];
    $cci_address = $_POST['i_cci_addr'];
    $cci_addr_pin = $_POST['i_cci_pin'];
    $cci_run_by = $_POST['i_cci_run_by'];
    $cci_unit_no = $_POST['i_cci_unit_no'];
    $cci_gender = $_POST['i_cci_gender'];
    $cci_strength = $_POST['i_cci_strength'];
    $cci_category = $_POST['i_cci_category'];
    $cci_strength = $_POST['i_cci_strength'];
    $cci_is_pab = $_POST['i_cci_is_pab'];
    $cci_reg_no = $_POST['i_cci_reg_no'];
    $cci_reg_date = $_POST['i_cci_reg_date'];
    $cci_reg_valid_upto = $_POST['i_cci_reg_valid'];
    $cci_reg_status = $_POST['i_cci_reg_status'];
    // Update database
    $query = "UPDATE `fund_release` SET `n_months` = ?, `children_days` = ?, `cwsn_child_days` = ?, `maintenance_cost` = ?, `bedding_cost` = ?, `admin_expenses` = ?, `cwsn_equip` = ?, `cwsn_addl_grant` = ?, `cwsn_medical` = ?, `staff_sal` = ?, `cwsn_staff_sal` = ?, `amnt_adjstmnt` = ?, `dist_recommendation` = ?, `amnt_released` = ?, `remarks` = CONCAT(IFNULL(`remarks`, ''), '\n', ?) WHERE `cci_id` = ? AND `init_dt` = ?";
    $stmt = $mysqli->prepare($query);
    if (false === $stmt) {
        trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
        return false;
    }
    $stmt->bind_param('iiidddddddddddsss', $n_month, $children_days, $cwsn_children_days,$maintenance_cost, $bedding_cost, $admin_expenses, $cwsn_equip, $cwsn_addl_grant, $cwsn_medical, $staff_sal, $cwsn_staff_sal, $amnt_adjst, $dist_recommendation, $amnt_released, $remarks, $cci_id, $init_dt);
        
    echo json_encode(Array("status" => $stmt->execute(), "message" => $message));
