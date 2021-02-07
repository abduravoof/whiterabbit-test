<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= $title; ?></title>
    <meta name="description" content="Rabbit Shop">
    <!-- Required meta tags-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <base href="<?= base_url(); ?>">
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="<?= base_url(); ?>assets/images/favicon.png">
    <!-- Google Font Imports-->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700;900&display=swap" rel="stylesheet">
    <!-- Feather Font-->
    <link rel="stylesheet" href="<?= base_url(); ?>assets/fonts/feather-font/css/iconfont.css">
    <!-- Bootstrap-->
    <link rel="stylesheet" href="<?= base_url(); ?>assets/vendors/bootstrap/css/bootstrap.min.css"  rel="stylesheet">
    <!-- Ladda Loader-->
    <link rel="stylesheet" href="<?= base_url(); ?>assets/vendors/ladda/ladda-themeless.min.css">
    <!-- Custom Style-->
    <link rel="stylesheet" href="<?= base_url(); ?>assets/css/style.css"  rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries-->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:-->
    <!-- [if lt IE 9]><script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script><![endif]-->
    <!-- [if lt IE 9]><script src="assets/vendors/respond/respond.min.js"></script><![endif]-->
</head>

<body>
    <header class="main-header">
        <div class="top-header">
            <div class="container">
                <div class="logo-holder">
                    <a href="<?= base_url(); ?>">
                        <img src="<?= base_url(); ?>assets/images/logo.png" alt="Logo">
                    </a>
                </div>
            </div>
            
        </div>
        <nav class="navbar navbar-main navbar-expand-lg navbar-dark">
            <div class="container">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                            <a class="nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sample Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Sample Dropdown
                            </a>
                            <div class="dropdown-menu slideDownIn" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>

        </nav>

    </header>
    <main>
    <?= $sub_view; ?>
    </main>
    <footer class="main-footer">
        <p>Copyright &copy; 2021. RabbitShop, All Rights are Reserved</p>
    </footer>
    <!-- jQuery -->
    <script src="<?= base_url(); ?>assets/vendors/jquery/jquery.min.js"></script>
    <!--Popper-->
    <script src="<?= base_url(); ?>assets/vendors/popper.js/popper.min.js"></script>
    <!--Bootstrap-->
    <script src="<?= base_url(); ?>assets/vendors/bootstrap/js/bootstrap.min.js"></script>
    <!--Ladda Loader-->
    <script src="<?= base_url(); ?>assets/vendors/ladda/spin.min.js"></script>
    <script src="<?= base_url(); ?>assets/vendors/ladda/ladda.min.js"></script>
    <!-- Custom Js-->
    <script src="<?= base_url(); ?>assets/js/custom.js"></script>

</body>

</html>