<?php
require_once 'Database.php';

class DbFunction{
	function get_login(){
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $query = "SELECT * FROM `cci_management_users`";
        $stmt= $mysqli->query($query);
		if(false===$stmt){
			trigger_error("Error in query: " . mysqli_connect_error(),E_USER_ERROR);
		}
        return $stmt;
	}

	function get_user($user_id) {
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $query = "SELECT `user_type` FROM `cci_management_users` WHERE `id` = '$user_id'";
        $stmt= $mysqli->query($query);
		if(false===$stmt){
			trigger_error("Error in query: " . mysqli_connect_error(),E_USER_ERROR);
		}
		$user= $stmt->fetch_all()[0][0];
        return $user;
	}

	function login($loginid,$password){
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT `id`, `password` FROM `cci_management_users` where `id`=? and `password`=? ";
		$stmt= $mysqli->prepare($query);
		if(false===$stmt){
			trigger_error("Error in query: " . mysqli_connect_error(),E_USER_ERROR);
		} else {
			$stmt->bind_param('ss',$loginid,$password);
			$stmt->execute();
			$stmt->bind_result($loginid,$password);
			$rs=$stmt->fetch();
			if(!$rs)
			{
				echo "<script>alert('Invalid password')</script>";
				header('location:login.php');
			} else {
				header('location:cci_list.php');
			}
		}
	}

	function get_districts() {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT DISTINCT(`cci`.`district`) FROM `cci`";
		$rs= $mysqli->query($query);
		return $rs->fetch_all();
	}

	function get_cci_categories() {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT `cci_unit_types`.`id`, `cci_unit_types`.`category` FROM `cci_unit_types`;";
		$rs= $mysqli->query($query);
		return $rs->fetch_all();
	}

	function get_filter_values($fieldname) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT DISTINCT(`cci`.`" . $fieldname . "`) FROM `cci`";
		$rs= $mysqli->query($query);
		return $rs->fetch_all();
	}

	function get_reg_file_status() {
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $query = "SELECT * FROM `cci_reg_file_status`";
        $rs= $mysqli->query($query);
        return $rs->fetch_all();
	}

	function get_cci_details() {
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $sql = "SELECT `cci`.`id`, `cci`.`district`, `cci`.`cci_name`, `cci`.`cci_unit_no`, `cci`.`cci_unit_gender`, `cci`.`run_by`, `cci_unit_types`.`category`, `cci`.`cci_unit_strength`, `cci`.`is_pab_approved`, `cci`.`reg_no`, `cci`.`reg_date`, `cci`.`reg_valid_upto`
				FROM `cci`
				JOIN `unit_types` ON `cci`.`id` = `unit_types`.`cci_id`
				JOIN `cci_unit_types` ON `unit_types`.`type_id` = `cci_unit_types`.`id`
				ORDER BY `cci`.`district`, `cci`.`cci_name`, `cci_unit_types`.`category`";
        $rs = $mysqli->query($sql, MYSQLI_ASSOC);
        return $rs;
	}

	function get_ccis_of_district($district) {
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $sql = "SELECT `cci`.`id`, `cci`.`cci_name`, `cci`.`cci_unit_no`, `cci_unit_types`.`type_of_child`
				FROM `cci`
				JOIN `unit_types` ON `cci`.`id` = `unit_types`.`cci_id`
				JOIN `cci_unit_types` ON `unit_types`.`type_id` = `cci_unit_types`.`id`
				WHERE `cci`.`district` = '" . $district . "'
				AND `cci`.`colocated_with` = `cci`.`id`;";
		// error_log($sql);
        $rs = $mysqli->query($sql, MYSQLI_ASSOC);
        return $rs;
	}

	function generate_csv($fy_qtr) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT cci.id, cci.district, cci.cci_name, cci.cci_run_by, cci.cci_unit_no, cci.category, cci.cci_gender
					FROM cci LEFT JOIN fund_release
					ON cci.id = fund_release.cci_id
					WHERE
						fund_release.fy_id IS NULL OR
						fund_release.fy_id != '". $fy_qtr . "'
					ORDER BY cci.district, cci.cci_run_by, cci.cci_name, cci.cci_unit_no";
		$stmt= $mysqli->query($query);
		$cci_cat = $stmt->fetch_all(MYSQLI_ASSOC);
		$output = fopen("php://output",'w') or die("Can't open php://output");
		header("Content-Type:text/csv"); 
		header("Content-Disposition:attachment;filename=". $fy_qtr .".csv"); 
		fputcsv($output, array('id', 'district', 'cci_name', 'cci_run_by', 'cci_unit_no', 'category', 'cci_gender', 'fy_id', 'no_of_months', 'children_days', 'cwsn_children_days' , 'amnt_adjustment', 'dist_recommendation'));
		foreach($cci_cat as $row) {
			$row['fy_id'] = $fy_qtr;
			$row['no_of_months'] = 3;
			fputcsv($output, $row);
		}
		fclose($output) or die("Can't close php://output");
		exit();
	}

	function get_fy_qtr($fy_id) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$query = "SELECT quarter FROM fy_quarter WHERE fy_id = '" . $fy_id . "'";
		$stmt= $mysqli->query($query);
		return $stmt;
	}

	function get_fy_allotment() {
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
		$query = 'SELECT * FROM `fy_quarter` LEFT JOIN `login` ON `fy_quarter`.`at_user_id` = `login`.`id` ORDER BY `fy_id`;';
        $stmt= $mysqli->query($query);
        return $stmt;
	}

	function get_allotment() {
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $query = "SELECT 
						`fy_quarter`.*,
						`login`.`id`, `login`.`user_type`,
					COUNT(`fund_release`.`cci_id`) AS 'n_cci',
					GROUP_CONCAT(DISTINCT(`cci`.`district`) ORDER BY `cci`.`district` SEPARATOR ', ') as `districts`,
					SUM(`fund_release`.`amnt_released`) AS 't_amount',
					MIN(`fund_release`.`init_dt`),
					MIN(`fund_release`.`apprvl_dt`),
					`fund_release`.`finalized`
					FROM
						`fy_quarter`
					LEFT JOIN 
						`fund_release` ON `fy_quarter`.`fy_id` = `fund_release`.`fy_id`
					LEFT JOIN 
						`login` ON `fund_release`.`at_user` = `login`.`id`
					LEFT JOIN
						`cci` ON `fund_release`.`cci_id` = `cci`.`id`
					GROUP BY 
						`fy_quarter`.`fy_id`, 
						`login`.`user_type`;";
        $rs= $mysqli->query($query);
		while ($r = $rs->fetch_array()) {
			$arr[] = $r;
		}
		$rs->close();
		return $arr;
	}

	function is_allotment_exists($cci_id, $fy_id) {
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $query = "SELECT * FROM `fund_release` WHERE `cci_id` = '". $cci_id . "' AND `fy_id` = '". $fy_id . "'";
        $stmt= $mysqli->query($query);
        return $stmt->num_rows > 0;
	}
	
	function get_expense_structure($cci_id) {
		$expenses = [];
		$db = Database::getInstance();
        $mysqli = $db->getConnection();
        $query = "SELECT `maintenance_cost`, `bedding_cost`, `admin_expenses`, `cwsn_equip`, `cwsn_addl_grant`, `cwsn_medical`, `staff_sal`, `cwsn_staff_sal` FROM `cci_recurring_exp` WHERE `id` = '". $cci_id. "'";
        $rs= $mysqli->query($query);
        while ($r = $rs->fetch_array()) {
            $expenses[] = $r;
		}
		$rs->close();
		return $expenses;
	}
}