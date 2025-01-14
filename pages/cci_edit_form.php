<?php
session_start ();
setlocale(LC_MONETARY, 'en_IN');

if (! (isset ( $_SESSION ['login'] ))) {
	header ( 'location:../index.php' );
}

if ( php_uname('s') != 'Darwin') {
  $fmt = new NumberFormatter('en_IN', NumberFormatter::DECIMAL);
  $fmt->setAttribute(NumberFormatter::MIN_FRACTION_DIGITS, 2);
}

require_once "../config/DbFunction.php";

$db = Database::getInstance();
$mysqli = $db->getConnection();

$data = $_GET['data'];
$cci_id = explode(',', $data)[0];
// Get CCI data
$sql = "SELECT
            `cci`.*
        FROM
            `cci`
        WHERE
            `cci`.`id` = ?;";
// echo $sql;
$stmt = $mysqli->prepare($sql);
if ($stmt === FALSE) {
    trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
    return null;
}
$stmt->bind_param('s', $cci_id);
if ($stmt->execute()) {
    $cci_details = $stmt->get_result()->fetch_all(MYSQLI_ASSOC)[0];
} else {
    trigger_error("Error in query: ". mysqli_connect_error(), E_USER_ERROR);
    die(E_USER_ERROR);
}
// print_r($cci_details);

$obj = new DbFunction();
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0, shrink-to-fit=no" name="viewport"
    />
    <link
      rel="icon"
      href="../assets/img/kaiadmin/favicon.ico"
      type="image/x-icon"
    />

    <!-- Fonts and icons -->
    <script src="../assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
      WebFont.load({
        google: { families: ["Public Sans:300,400,500,600,700"] },
        custom: {
          families: [
            "Font Awesome 5 Solid",
            "Font Awesome 5 Regular",
            "Font Awesome 5 Brands",
            "simple-line-icons",
          ],
          urls: ["../assets/css/fonts.min.css"],
        },
        active: function () {
          sessionStorage.fonts = true;
        },
      });
    </script>
    <style>
        .scrollable-card {
            height: 85vh; /* Adjust height as needed */
            overflow-y: auto;
        }
        .non-scrollable-card {
            height: 90vh; /* Adjust height as needed */
        }
        .text-small {
            font-size: 12px;
        }
    </style>
</head>

<body>
    <div class="row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <form id="fCCIEdit" action="" method="">
                <div class="card border-dark">
                    <div class="card-body scrollable-card">
                        <input type="hidden" class="form-control" name="cci-id" id="cci-id" value="<?php echo $cci_id ?>">
                        <div class="row mb-3">
                            <label for="i-cci-dist" class="col-sm-6 col-form-label">District</label>
                            <div class="col-sm-6">
                                <select id="i-cci-dist" name="i-cci-dist" class="form-control">
                                    <option value="">Select District</option>
                                    <?php
                                    $districts = $obj->get_filter_values('district');
                                    foreach ($districts as $district) {
                                        echo '<option value="'. $district[0]. '"'. ($cci_details['district'] == $district[0] ? 'selected' : '') . '>'. $district[0] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_name" class="col-sm-6 col-form-label">CCI</label>
                            <div class="col-sm-6">
                            <textarea rows="2" class="form-control" id="i_cci_name" name="i_cci_name"><?php echo $cci_details['cci_name'] ?></textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_addr" class="col-sm-6 col-form-label">Address</label>
                            <div class="col-sm-6">
                            <textarea rows="3" class="form-control" id="i_cci_addr" name="i_cci_addr"><?php echo $cci_details['address'] ?></textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_pin" class="col-sm-6 col-form-label">PIN</label>
                            <div class="col-sm-6">
                            <input type="text" class="form-control" id="i_cci_pin" name="i_cci_pin" value="<?php echo $cci_details['pin'] ?>" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_run_by" class="col-sm-6 col-form-label">Run By</label>
                            <div class="col-sm-6">
                                <select id="i_cci_run_by" name="i_cci_run_by" class="form-control">
                                    <option value="">Select CCI run by</option>
                                    <?php
                                    $run_by = $obj->get_filter_values('run_by');
                                    foreach ($run_by as $val) {
                                        echo '<option value="'. $val[0]. '"'. ($cci_details['run_by'] == $val[0] ? 'selected' : '') .'>'. $val[0] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_unit_no" class="col-sm-6 col-form-label">Unit No</label>
                            <div class="col-sm-6">
                            <input type="text" class="form-control" id="i_cci_unit_no" name="i_cci_unit_no" value="<?php echo $cci_details['cci_unit_no'] ?>" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_gender" class="col-sm-6 col-form-label">Gender of the Children</label>
                            <div class="col-sm-6">
                                <select id="i_cci_gender" name="i_cci_gender" class="form-control">
                                    <option value="">Select Gender</option>
                                    <?php
                                    $run_by = $obj->get_filter_values('cci_unit_gender');
                                    foreach ($run_by as $val) {
                                        echo '<option value="'. $val[0]. '"'. ($cci_details['cci_unit_gender'] == $val[0] ? 'selected' : '') .'>'. $val[0] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_strength" class="col-sm-6 col-form-label">Unit Strength</label>
                            <div class="col-sm-6">
                            <input type="text" class="form-control" id="i_cci_strength" name="i_cci_strength" value="<?php echo intval($cci_details['cci_unit_strength']) ?>" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_is_pab" class="col-sm-6 col-form-label">Is CCI Unit PAB Approved?</label>
                            <div class="col-sm-6">
                                <select id="i_cci_is_pab" name="i_cci_is_pab" class="form-control">
                                    <option value="">Select one</option>
                                    <option value=1 <?php print($cci_details['is_pab_approved'] == true ? 'selected' : '') ?> >Yes</option>
                                    <option value=0 <?php print($cci_details['is_pab_approved'] == false ? 'selected' : '') ?> >Yes</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_reg_no" class="col-sm-6 col-form-label">Registration No.</label>
                            <div class="col-sm-6">
                            <input type="text" class="form-control" id="i_cci_reg_no" name="i_cci_reg_no" value="<?php echo $cci_details['reg_no'] ?>" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_reg_dt" class="col-sm-6 col-form-label">Date of Registration</label>
                            <div class="col-sm-6">
                            <input type="date" id="i_cci_reg_dt" name="i_cci_reg_dt" class="form-control" value="<?php echo $cci_details['reg_date']; ?>"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_reg_valid" class="col-sm-6 col-form-label">Registration valid upto</label>
                            <div class="col-sm-6">
                            <input type="date" id="i_cci_reg_valid" name="i_cci_reg_valid" class="form-control" value="<?php echo $cci_details['reg_valid_upto']; ?>"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_reg_status" class="col-sm-6 col-form-label">Registration valid upto</label>
                            <div class="col-sm-6">
                                <select id="i_cci_reg_status" name="i_cci_reg_status" class="form-control">
                                  <option value="">Select one</option>
                                  <?php
                                  $file_status = $obj->get_reg_file_status();
                                  foreach ($file_status as $val) {
                                    echo '<option value="'. $val[0]. '"'. ($cci_details['reg_status'] == $val[0] ? ' selected' : '') .'>'. $val[1]. '</option>';
                                  }
                                  ?>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="i_cci_reg_file" class="col-sm-6 col-form-label">Registration Notification</label>
                            <div class="col-sm-6">
                                <input class="form-control" type="file" name="i_cci_reg_file" id="i_cci_reg_file" accept="application/pdf">
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-end">
                        <button id="bSubmitcci_details" type="submit" value="Saved" class="btn btn-primary">
                            <i class="fas fa-save"></i>
                            Save
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-sm-6">
            <div class="card border-dark text-bg-dark non-scrollable-card">
                <div class="card-body">
                <?php
                    if (isset($filename)) {
                        echo '<iframe src="../recommendations/' . $filename . '" width="100%" height="100%"></iframe>';
                    }
                ?>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            // Enable submit button if input changed
            $('#fCCIEdit')
                .each(function () {
                    $(this).data('serialized', $(this).serialize())
                })
                .on('change input', function () {
                    $(this)
                        .find('#bSubmitcci_details')
                            .prop('disabled', $(this).data('serialized') == $(this).serialize());
                })
                .find('#bSubmitcci_details')
                    .prop('disabled', true);

            
            // Restrict input to integers
            setInputFilter(document.getElementById('i_cci_pin'), function(value) {
                return /^\d*$/.test(value)
            }, "Invalid input! Only numbers are allowed.");
            setInputFilter(document.getElementById('i_cci_reg_no'), function(value) {
                return /^\d*$/.test(value)
            }, "Invalid input! Only numbers are allowed.");
            setInputFilter(document.getElementById('i_cci_strength'), function(value) {
                return /^\d*$/.test(value)
            }, "Invalid input! Only numbers are allowed.");

            // Recalculate cci_detailss on change of input
            $('#inputNMonths, #inputChildrenDaysPerMonth, #inputCWSNDaysPerMonth').change(function() {
                recalculateEstimate();
            });

            // Recalculate the estimated value on change of input
            $('#inputAmntAdjustment, #inputDistRecommendation').change(function() {
                recalculateEstimate();
            });

            // Update pdf viewer on file change
            $('#i_cci_reg_file').change(function() {
                var file = $(this)[0].files[0];
                var filename = file.name;
                var ext = filename.
                alert(ext);
            });
        });
        // Restricts input for the given textbox to the given inputFilter function.
        function setInputFilter(textbox, inputFilter, errMsg) {
        [ "input", "keydown", "keyup", "mousedown", "mouseup", "select", "contextmenu", "drop", "focusout" ].forEach(function(event) {
            textbox.addEventListener(event, function(e) {
            if (inputFilter(this.value)) {
                // Accepted value.
                if ([ "keydown", "mousedown", "focusout" ].indexOf(e.type) >= 0){
                this.classList.remove("input-error");
                this.setCustomValidity("");
                }

                this.oldValue = this.value;
                this.oldSelectionStart = this.selectionStart;
                this.oldSelectionEnd = this.selectionEnd;
            }
            else if (this.hasOwnProperty("oldValue")) {
                // Rejected value: restore the previous one.
                this.classList.add("input-error");
                this.setCustomValidity(errMsg);
                this.reportValidity();
                this.value = this.oldValue;
                this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
            }
            else {
                // Rejected value: nothing to restore.
                // this.value = "";
            }
            });
        });
        }

        // Recalculate the estimated value on change of inputs
        function recalculateEstimate() {
            var nMonths = parseInt(document.getElementById('inputNMonths').value);
            var nQuarter = Math.ceil(nMonths / 3);
            var childrenDaysPerMonth = parseInt(document.getElementById('inputChildrenDaysPerMonth').value);
            var cwsnDaysPerMonth = parseInt(document.getElementById('inputCWSNDaysPerMonth').value);
            var amntAdjustment = parseFloat(document.getElementById('inputAmntAdjustment').value.replace(/,/g,''));
            var distRecommendation = parseFloat(document.getElementById('inputDistRecommendation').value.replace(/,/g,''));
            
            var maintenance_cost = parseFloat(document.getElementById('unitMaintenanceCost').value.replace(/,/g,''));
            var bedding_cost = parseFloat(document.getElementById('unitBeddingCost').value.replace(/,/g,''));
            var admin_expenses = parseFloat(document.getElementById('unitAdminCost').value.replace(/,/g,''));
            var cwsn_equip = parseFloat(document.getElementById('unitCWSNEquipCost').value.replace(/,/g,''));
            var cwsn_addl_grant = parseFloat(document.getElementById('unitCWSNAddlCost').value.replace(/,/g,''));
            var cwsn_medical = parseFloat(document.getElementById('unitCWSNMedical').value.replace(/,/g,''));
            var staff_sal = parseFloat(document.getElementById('unitStaffSalary').value.replace(/,/g,''));
            var cwsn_staff_sal = parseFloat(document.getElementById('unitCWSNStaffSalary').value.replace(/,/g,''));

            var new_maintenance_cost = maintenance_cost * childrenDaysPerMonth * nMonths;
            var new_bedding_cost = bedding_cost * childrenDaysPerMonth * nQuarter;
            var new_admin_expenses = admin_expenses * nQuarter;
            var new_cwsn_equip = cwsn_equip * nQuarter;
            var new_cwsn_addl_grant = cwsn_addl_grant * cwsnDaysPerMonth * nMonths;
            var new_cwsn_medical = cwsn_medical * cwsnDaysPerMonth * nMonths;
            var new_staff_sal = staff_sal * nQuarter;
            var new_cwsn_staff_sal = cwsn_staff_sal * nQuarter;
            var new_total_salary = new_staff_sal + new_cwsn_staff_sal;
            var new_total_recurrig = new_maintenance_cost + 
                                        new_bedding_cost + 
                                        new_admin_expenses +
                                        new_cwsn_equip + 
                                        new_cwsn_addl_grant +
                                        new_cwsn_medical +
                                        new_total_salary +
                                        amntAdjustment;
            var new_fund_released = new_total_recurrig > distRecommendation ? distRecommendation : new_total_recurrig;
            
            $('.nMonths').val(nMonths);
            $('.nQuarter').val(nQuarter);
            $('.cDays').val(childrenDaysPerMonth);
            $('.cwsnDays').val(cwsnDaysPerMonth);
            $('#inputMaintenanceCost').val(Number(new_maintenance_cost).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigitis: 2}));
            $('#inputBeddingCost').val(Number(new_bedding_cost).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigitis: 2}));
            $('#inputAdminCost').val(Number(new_admin_expenses).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigitis: 2}));
            $('#inputCWSNEquipCost').val(Number(new_cwsn_equip).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
            $('#inputCWSNAddlCost').val(Number(new_cwsn_addl_grant).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
            $('#inputCWSNMedical').val(Number(new_cwsn_medical).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
            $('#inputStaffSalary').val(Number(new_staff_sal).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
            $('#inputCWSNStaffSalary').val(Number(new_cwsn_staff_sal).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
            $('#inputtotalSalary').val(Number(new_total_salary).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
            $('#inputtotalRecurring').val(Number(new_total_recurrig).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
            // $('#inputAmntAdjustment').val(Number(amntAdjustment).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
            // $('#inputDistRecommendation').val(Number(distRecommendation).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
            $('#inputFundReleased').val(Number(new_fund_released).toLocaleString('en-IN', {minimumFractionDigits: 2, maximumFractionDigits: 2}));
        }
    </script>
</body>
</html>