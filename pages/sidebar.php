<!-- Sidebar -->
<div class="sidebar sidebar-style-2" data-background-color="dark">
    <div class="sidebar-logo">
        <!-- Logo Header -->
        <div class="logo-header" data-background-color="dark">
        <a href="../index.php" class="logo">
            <svg width="40" height="40" xmlns="http://www.w3.org/2000/svg">
                <rect width="40" height="40" fill="lightblue"/>
                <text x="4" y="28" font-family="Consolas" font-size="20" fill="black">MV</text>
            </svg>
            <p class="h6 navbar-brand text-light fw-bold px-sm-2 pt-2">CCI Management</p>
        </a>
        <div class="nav-toggle">
            <button class="btn btn-toggle toggle-sidebar">
            <i class="gg-menu-right"></i>
            </button>
            <button class="btn btn-toggle sidenav-toggler">
            <i class="gg-menu-left"></i>
            </button>
        </div>
        <button class="topbar-toggler more">
            <i class="gg-more-vertical-alt"></i>
        </button>
        </div>
        <!-- End Logo Header -->
    </div>
    <div class="sidebar-wrapper scrollbar scrollbar-inner">
        <div class="sidebar-content">
        <ul class="nav nav-secondary" id="side-menu">
            <li class="nav-item">
                <a href="cci_list.php" class="">
                    <i class="far fa-list-alt"></i>
                    CCI List
                </a>
            </li>
            <?php if (isset ( $_SESSION ['login'] )  && ($_SESSION['login'] == 1)) { ?>
            <li class="nav-item">
                <a href="csv-generate.php" class="">
                    <i class="fas fa-file-download"></i>
                    Add New CCI
                </a>
            </li>
            <li class="nav-item">
                <a href="logout.php" class="nav-link link-body-emphasis">
                    <i class="fas fa-sign-out-alt"></i>
                    Logout
                </a>
            </li>
            <?php } else { ?>
            <li class="nav-item">
                <a href="login.php" class="nav-link link-body-emphasis">
                    <i class="fas fa-sign-in-alt"></i>
                    Login
                </a>
            </li>
            <?php } ?>
        </ul>
        </div>
    </div>
</div>
<!-- End Sidebar -->