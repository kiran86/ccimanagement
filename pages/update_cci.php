<?php
	session_start ();
	if (!(isset( $_SESSION ['login']))) {
		header ( 'location:../index.php' );
	}

    include('../config/DbFunction.php');
    $obj = new DbFunction();

	require_once('../config/Database.php');
	$db = Database::getInstance();
	$mysqli = $db->getConnection();

    $status = null;
    error_log(print_r($_POST, true));
    // Fetch POST data
    $cci_id = $_POST['cci_id'];
    $district = $_POST['i_cci_dist'];
    $cci_name = $_POST['i_cci_name'];
    $cci_address = $_POST['i_cci_addr'];
    $cci_addr_pin = $_POST['i_cci_pin'];
    $cci_run_by = $_POST['i_cci_run_by'];
    $cci_unit_no = $_POST['i_cci_unit_no'];
    $cci_category = $_POST['i_cci_category'];
    $cci_gender = $_POST['i_cci_gender'];
    $cci_strength = $_POST['i_cci_strength'];
    $cci_is_pab = $_POST['i_cci_is_pab'];
    $cci_colocated_with = $_POST['i_cci_colocated_with'];
    $cci_reg_no = $_POST['i_cci_reg_no'];
    $cci_reg_date = $_POST['i_cci_reg_dt'];
    $cci_reg_valid_upto = $_POST['i_cci_reg_valid'];
    $cci_reg_status = $_POST['i_cci_reg_status'];
    $cci_contact_name = $_POST['i_cci_contact_name'];
    $cci_contact_designation = $_POST['i_cci_contact_designation'];
    $cci_contact_no = $_POST['i_cci_contact_no'];

    // Check database connection
    if ($mysqli->connect_error) {
        die("Connection failed: " . $mysqli->connect_error);
    }

    // Start transaction
    $mysqli->begin_transaction();

    try {
        // Update cci table
        $query = "UPDATE `cci` 
                SET 
                    `district` = ?,
                    `cci_name` = ?,
                    `address` = ?,
                    `pin` = ?,
                    `run_by` = ?,
                    `cci_unit_no` = ?, 
                    `cci_unit_gender` = ?, 
                    `cci_unit_strength` = ?, 
                    `is_pab_approved` = ?, 
                    `colocated_with` = ?, 
                    `reg_no` = ?, 
                    `reg_date` = ?, 
                    `reg_valid_upto` = ?, 
                    `reg_status` = ?, 
                    `contact_name` = ?,
                    `contact_desg` = ?,
                    `contact_phno` = ?
                WHERE `id` = ?";
        $stmt = $mysqli->prepare($query);
        if (false === $stmt) {
            trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
            return false;
        }
        $stmt->bind_param('sssisisiissssissis', $district, $cci_name, $cci_address, $cci_addr_pin, $cci_run_by, $cci_unit_no, $cci_gender, $cci_strength, $cci_is_pab, $cci_colocated_with, $cci_reg_no, $cci_reg_date, $cci_reg_valid_upto, $cci_reg_status, $cci_contact_name, $cci_contact_designation, $cci_contact_no, $cci_id);
        if ($stmt->execute()) {
            throw new Exception("Error updating CCI information: " . $stmt->error);
        } else {
            $stmt->close();
        }

        // Update unit_types table
        $query = "UPDATE `unit_types` 
                SET 
                    `type_id` = ?
                WHERE `cci_id` = ?";
        $stmt = $mysqli->prepare($query);
        if (false === $stmt) {
            trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
            return false;
        }
        $stmt->bind_param('is', $cci_category, $cci_id);
        if ($stmt->execute()) {
            throw new Exception("Error updating CCI unit type: " . $stmt->error);
        } else {
            $stmt->close();
        }

        // Commit transaction
        $mysqli->commit();
        $mysqli->close();
        // Set status and message
        $status = true;
        $message = "CCI information updated successfully";
    } catch (Exception $e) {
        $mysqli->rollback();
        $status = false;
        $message = "Error: " . $e->getMessage();
    }
        
    echo json_encode(Array("status" => $status, "message" => $message));
