<?php
session_start ();

include('../config/DbFunction.php');
include('../config/utilityfunc.php');

$obj = new DbFunction();
?> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mission Vatsalya Fund Management : Sub-allotment Status</title>
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

    <!-- CSS Files -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/plugins.min.css" />
    <link rel="stylesheet" href="../assets/css/kaiadmin.min.css" />
    <link href="https://cdn.datatables.net/v/bs5/jszip-3.10.1/dt-2.0.8/af-2.7.0/b-3.0.2/b-colvis-3.0.2/b-html5-3.0.2/b-print-3.0.2/cr-2.0.3/date-1.5.2/fc-5.0.1/fh-4.0.1/kt-2.12.1/r-3.0.2/rg-1.5.0/rr-1.5.0/sc-2.4.3/sb-1.7.1/sp-2.3.1/sl-2.0.3/sr-1.4.1/datatables.min.css" rel="stylesheet">
</head>

<body>
    <div class="wrapper">
        <?php include('sidebar.php');?>
        <div class="main-panel">
            <div class="container" style="margin-top: 0px;">
              <div class="page-inner">
                <div class="row">
                  <div class="col-md-12">
                    <div class="card card-round border-dark">
                      <div class="card-header">
                        <form id="filter-form" method="POST">
                          <div class="row">
                            <div class="col-sm-2">
                              <div class="form-floating">
                                <select id="district" name="district" class="form-control">
                                  <option value="">Select District</option>
                                  <?php
                                  $districts = $obj->get_filter_values('district');
                                  foreach ($districts as $district) {
                                    echo '<option value="'. $district[0]. '">'. $district[0] . '</option>';
                                  }
                                 ?>
                                </select>
                                <label for="district">District</label>
                              </div>
                            </div>
                            <div class="col-sm-2">
                              <div class="form-floating">
                                <select id="run_by" name="run_by" class="form-control">
                                  <option value="">Select CCI run by</option>
                                  <?php
                                  $run_by = $obj->get_filter_values('run_by');
                                  foreach ($run_by as $val) {
                                    echo '<option value="'. $val[0]. '">'. $val[0] . '</option>';
                                  }
                                 ?>
                                </select>
                                <label for="run_by">Run By</label>
                              </div>
                            </div>
                            <div class="col-sm-2">
                              <div class="form-floating">
                                <select id="pab_approval" name="pab_approval" class="form-control">
                                  <option value="">Select one</option>
                                  <option value="yes">Yes</option>
                                  <option value="no">No</option>
                                </select>
                                <label for="pab_approval">Is PAB Approved?</label>
                              </div>
                            </div>
                            <div class="col-sm-2">
                              <div class="form-floating">
                                <input type="date" id="reg_valid_upto" name="reg_valid_upto" class="form-control" min="<?php echo date("Y-m-d"); ?>"/>
                                <label for="reg_valid_upto">Valid Registration till</label>
                              </div>
                            </div>
                            <?php if (isset($_SESSION['login'])) { ?>
                            <div class="col-sm-2">
                              <div class="form-floating">
                                <select id="reg_file_status" name="reg_file_status" class="form-control">
                                  <option value="">Select one</option>
                                  <?php
                                  $file_status = $obj->get_reg_file_status();
                                  foreach ($file_status as $val) {
                                    echo '<option value="'. $val[0]. '">'. $val[1]. '</option>';
                                  }
                                  ?>
                                </select>
                                <label for="reg_file_status">File Status?</label>
                              </div>
                            </div>
                            <?php }?>
                            <div class="col-sm-1">
                              <button id="reset-form" type="reset" class="btn btn-outline-dark btn-lg">Reset</button>
                            </div>
                          </div>
                        </form>
                      </div>
                      <div class="card-body border border-dark border-2">
                        <div class="table-responsive">
                          <!-- CCI table -->
                          <table id="cci-table" class="display table table-striped table-hover table-bordered">
                            <thead class="text-center">
                              <th>Sl. No.<br>(1)</th>
                              <th>CCI_ID</th>
                              <th>District<br>(2)</th>
                              <th>Name of the CCI<br>(3)</th>
                              <th>Unit No.<br>(4)</th>
                              <th>Gender<br>(5)</th>
                              <th>Run by<br>(6)</th>
                              <th>Category<br>(7)</th>
                              <th>Strength<br>(8)</th>
                              <th>PAB Approval<br>(9)</th>
                              <th>Registration No.<br>(10)</th>
                              <th>Date<br>(11)</th>
                              <th>Valid Upto<br>(12)</th>
                            </thead>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Modal for cci edit form -->
                <div class="modal fade" tab-index="-1" data-bs-backdrop="static" data-bs-keyboard="false" id="formModal">
                  <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title">Edit CCI Details</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="../assets/js/core/jquery-3.7.1.min.js"></script>
    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap.min.js"></script>

    <!-- jQuery Scrollbar -->
    <script src="../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>

    <!-- Chart JS -->
    <script src="../assets/js/plugin/chart.js/chart.min.js"></script>

    <!-- jQuery Sparkline -->
    <script src="../assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

    <!-- Chart Circle -->
    <script src="../assets/js/plugin/chart-circle/circles.min.js"></script>

    <!-- Datatables -->
    <script src="../assets/js/plugin/datatables/datatables.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
  	<script src="https://cdn.datatables.net/v/bs5/jszip-3.10.1/dt-2.0.8/af-2.7.0/b-3.0.2/b-colvis-3.0.2/b-html5-3.0.2/b-print-3.0.2/cr-2.0.3/date-1.5.2/fc-5.0.1/fh-4.0.1/kt-2.12.1/r-3.0.2/rg-1.5.0/rr-1.5.0/sc-2.4.3/sb-1.7.1/sp-2.3.1/sl-2.0.3/sr-1.4.1/datatables.min.js"></script>

    <!-- Bootstrap Notify -->
    <script src="../assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

    <!-- jQuery Vector Maps -->
    <script src="../assets/js/plugin/jsvectormap/jsvectormap.min.js"></script>
    <script src="../assets/js/plugin/jsvectormap/world.js"></script>

    <!-- Sweet Alert -->
    <script src="../assets/js/plugin/sweetalert/sweetalert.min.js"></script>

    <!-- Kaiadmin JS -->
    <script src="../assets/js/kaiadmin.min.js"></script>
    <script>
        $(document).ready(function() {
            $('li.nav-item').each(function() {
                if (window.location.pathname.includes($(this).children('a').attr('href'))) {
                    $(this).addClass('active');
                }
            });
            
            populateCCIData();
        });

        $("#pab_approval").on("change", function() {
          populateCCIData();
        });

        $("#district").on("change", function() {
          populateCCIData();
        });

        $("#run_by").on("change", function() {
          populateCCIData();
        });

        $("#reg_valid_upto").on("change", function() {
          populateCCIData();
        });

        <?php if (isset($_SESSION['login'])) { ?>
        $("#reg_file_status").on("change", function() {
          populateCCIData();
        });
        <?php }?>

        $("#filter-form").on("reset", function(e) {
          setTimeout(function() {
            populateCCIData();
          }, 1);
        });

        // Get data from server and populate modal
        const formModal = document.getElementById('formModal');

        function populateCCIData() {
          var formFilter = document.getElementById('filter-form');
          var formData = new FormData(formFilter);
          for (const [key, value] of formData) {
            console.log(key + ': ' + value + '\n');
          }
          console.log(formData.getAll('key'));
          $.ajax({
              url: "get_cci_details.php",
              type: "POST",
              data: formData,
              dataType: 'json',
              success: function(response){
                cci_table = $("#cci-table").DataTable({
                  destroy: true,
                  data: response.ccidata,
                  columnDefs: [
                    {
                      createdCell: function(td) {
                        $(td).addClass('text-center');
                      }
                    },
                    {
                      targets: [1], visible: false
                    },
                    { 
                      targets: [4, 8, 11, 12],
                      createdCell: function (td) {
                        $(td).addClass('text-end');
                      }
                    }
                  ],
                  fixedColumns: {
                    start: 3
                  },
                  ordering: 'false',
                  select: 'single',
                  searching: true,
                  paging:true,
                  scrollCollapse: true,
                  scrollX: true,
                  scrollY: '50vh'
                });
                // Row selection
                <?php if (isset ( $_SESSION ['login'] )) { ?>
                cci_table.on('select', function (e, dt, type, indexes) {
                  var rowData = cci_table.row(indexes).data();
                  populateFormModal(rowData[1]);
                })
                <?php } ?>
              },
              error: function(xhr, status, error) {
                  console.error('AJAX Error: ' + status + error);
              },
              cache: false,
              contentType: false,
              processData: false
          });
        }
        
        function populateFormModal(data) {
          $('#formModal .modal-body').load('cci_edit_form.php?data=' + data, function() {
            $('#formModal .modal-body').css("overflow","hidden");
            $('#formModal').modal('show');

            // Submit the form
            $('#fCCIEdit').on('submit', function(e) {
                e.preventDefault();
                var action = e.originalEvent.submitter.value;
                swal({
                  title: "Are you sure?",
                  text: "You won't be able to revert this!",
                  icon: "warning",
                  buttons: {
                    confirm: {
                      text: "Yes, Confirm!",
                      className: "btn btn-success",
                    },
                    cancel: {
                      visible: true,
                      className: "btn btn-danger",
                    },
                  },
                }).then((confirmed) => {
                  if (confirmed) {
                  e.preventDefault();
                  var formData = new FormData(this);
                  formData.append('b_id', action);
                  $.ajax({
                      url: "update_allotment.php",
                      type: "POST",
                      data: formData,
                      contentType: false,
                      processData: false,
                      dataType: 'json',
                      success: function(response) {
                          // console.log(response);
                          if (response.status) {
                              swal({
                                  title: "Successfull!",
                                  text: "Allotment " + response.message + " successfully.",
                                  icon: "success",
                                  buttons: {
                                  confirm: {
                                  className: "btn btn-success",
                                  },
                                  },
                              }).then(function () {
                                $('#formModal').modal('hide');
                                populateCCIData();
                              });
                          } else {
                              swal({
                                  title: "Error!",
                                  text: "Some error occured. Operation failed.",
                                  icon: "error",
                                  buttons: {
                                      confirm: {
                                          className: "btn btn-danger",
                                      },
                                  },
                              });
                          }
                      },
                      error: function(xhr, status, error) {
                          alert("Error updating expenditure: " + error);
                      }
                  });
                }
              });
            });
          });
        }

        formModal.addEventListener('hidden.bs.modal', function(event) {
          cci_table.rows().deselect();
          saa_table.rows().deselect();
          os_table.rows().deselect();
        });
        
        function addButton(mode) {
              $('.modal-footer').append('<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>');
          switch (mode) {
            case 2:
              $('.modal-footer').append('<a href="#" id="revert" class="btn btn-primary" onclick="file_action(this.id)"><i class="fas fa-arrow-alt-circle-left"></i> Revert</a>');
              $('.modal-footer').append('<a href="#" id="approve" class="btn btn-primary" onclick="file_action(this.id)"><i class="fas fa-check-circle"></i> Approve</a>');
              break;
            case 1:
              $('.modal-footer').append('<a href="#" id="revert" class="btn btn-primary" onclick="file_action(this.id)"><i class="fas fa-arrow-alt-circle-left"></i> Revert</a>');
              $('.modal-footer').append('<a href="#" id="forward" class="btn btn-primary" onclick="file_action(this.id)">Forward <i class="fas fa-arrow-alt-circle-right"></i></a>');
              break;
            case 0:
              $('.modal-footer').append('<a href="#" id="forward" class="btn btn-primary" onclick="file_action(this.id)">Forward <i class="fas fa-arrow-alt-circle-right"></i></a>');
              break;
          }
        }

        function file_action(action) {
          // console.log("Action: " + action);
          if (
            !($.fn.dataTable.isDataTable("#cci-table")) &&
            !($.fn.dataTable.isDataTable("#saa-table")) &&
            !($.fn.dataTable.isDataTable("#os-table"))
          ) {
            swal("No Data", "Nothing to do!", {
                    icon: "error",
                      buttons: {
                        confirm: {
                            className: "btn btn-danger",
                        },
                      },
                  });
            exit();
          }
          swal({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            icon: "warning",
            buttons: {
              confirm: {
                text: "Yes, " +action + "!",
                className: "btn btn-success",
              },
              cancel: {
                visible: true,
                className: "btn btn-danger",
              },
            },
          }).then((Forward) => {
            if (Forward) {
              var fy_id = $('#cci-table').DataTable().rows(0).data()[0][0];
              var init_dt = $('#cci-table').DataTable().rows(0).data()[0][22];
              var formData = new FormData();
              formData.append('fy_id', fy_id);
              formData.append('init_dt', init_dt);
              formData.append('action', action);
              // forward csv file
              $.ajax({
                url: "file_movement.php",
                type: "POST",
                data: formData,
                dataType: 'json',
                success: function(response){
                  // console.log(response);
                  switch (response.status) {
                    case 0:
                      swal({
                        title: "Error!",
                        text: "Error!" + response.message,
                        icon: "error",
                        buttons: {
                            confirm: {
                                className: "btn btn-danger",
                            },
                        },
                      });
                      break;
                    case 1:
                      // clear table data
                      $('#cci-table').DataTable().clear();
                      $('#cci-table').DataTable().destroy();
                      $('#saa-table').DataTable().clear();
                      $('#saa-table').DataTable().destroy();
                      $('#os-table').DataTable().clear();
                      $('#os-table').DataTable().destroy();
                      swal({
                        title: "Successfull!",
                        text: response.message,
                        icon: "success",
                        buttons: {
                          confirm: {
                          className: "btn btn-success",
                          },
                        },
                      }).then(function () {
                        location.reload();
                      });                      
                      break;
                  }
                },
                error: function(xhr, status, error) {
                  console.error('AJAX Error: ' + status + error);
                },
                cache: false,
                contentType: false,
                processData: false
              });
            } else {
              swal.close();
            }
          });
        }
        </script>
</body>
</html>