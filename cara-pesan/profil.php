<!DOCTYPE html>
<?php
$menu = !empty($_GET['menu']) ? $_GET['menu'] : "1";

//session_start();
//if(!isset($_SESSION['username'])){ header("location:login/"); }
//if(!isset($_SESSION['nama'])){ header("location:login/"); }

?>
<?php include "../isi/koneksi/koneksi.php";
?>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Team2Travel.net</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand topnav" href="index.php">Team2Travel</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	
                <ul class="nav navbar-nav navbar-right">
                        <?php session_start();
                            if(isset($_SESSION['username'])){
	                           $username=$_SESSION['username'];
                        ?>
                    <li>
                        <ul class="nav navbar-nav navbar-right">
                     <li>
                        <a href="index.php">Cara Memesan</a>
                    </li>
                            <!-- alert notification end-->
                            <!-- user login dropdown start-->
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="username"> 
                                        <?php echo $_SESSION['username']; ?>
                                     </span>
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu extended logout">
                                    <div class="log-arrow-up"></div>
                                     <li class="eborder-top">
                                        <a href="profil.php"><i class="icon_profile"></i> Lihat Profil</a>
                                    </li>
                                    <li>
                                        <a href="edit.php"><i class="icon_mail_alt"></i> Ganti Password</a>
                                    </li>
                                    <li>
                                        <a href="../logout.php"><i class="icon_key_alt"></i> Log Out</a>
                                    
                                    </li>
                                </ul>
                            </li>
                            <!-- user login dropdown end -->
                        </ul>
                       
                    </li>
                    <?php
                        }else{
                        ?>
                   <li>
                        <a href="index.php">Cara Memesan</a>
                    </li>
                    <li>
                        <a href="../formlogin.php">Login</a>
                    </li>
                    <?php
                    }
                    ?>

<!--
                    <li>
                        <a href="#about">Cara Memesan</a>
                    </li>
                    <li>
                        <a href="login/">Login</a>
                    </li>
-->
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Header -->
    <a name="about"></a>
    <div class="banner">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                      <div class="panel panel-primary">
                           <div class="panel-body"  style="color:black;">
                               <a  href="../index.php" class="btn btn-primary btn-md" data-toggle="tooltip"  title="Kembali ke halaman utama">
                              <span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home
                            </a>
                            <h3>welcome back <?php echo $username ?></h3>
                            <div class="banner-left">
                                <div class="ze-white">
                                <div class="bs-sidebar" role="complementary">
                                        <ul class="nav bs-sidenav"> 
											<?php
												if(isset($_SESSION['username'])){
											?>
													<li <?php //if($menu==1) { echo 'class="active"'; } else { echo 'class=""'; } ?> >
														<div class="#"><a href="profil.php">
															
															<div class="grid1-desc">
																<h4 style="color:black;"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Profil</h4>
															</div>
															<div class="clear"></div>
														<div class="con-text"></div>
														</div>
													</li>
													<li <?php //if($menu==2) { echo 'class="active"'; } else { echo 'class=""'; } ?>>
													   <div class="#"><a href="edit.php">
															
															<div class="grid1-desc">
																<h4 style="color:black;"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Edit password</h4>
															</div>
															<div class="clear"></div></a>
														<div class="con-text"></div>
														</div>
													</li>
													
												<?php }?>
                                        </ul>
										
                                    </div>
                            </div>
                            </div>
                        
                        <div class="col-md-8" role="main">
                                <div class="clearfix"></div>
                    <!-- I  N  I    L  H  O   -->
                <?php          
	$query = "SELECT * FROM member where username='$username'";       
$result = mysqli_query($kdb,$query);
 while($tampil = mysqli_fetch_array($result)){
?>
<div class="span6">
                <legend><p><h3><?php echo $tampil['username']; ?></h3></p></legend>
            </div>
<table class="table striped hovered">
    <tbody>
        <tr>
           <th class="text-left">Nama/Email</th>
            <th class="text-left"><abbr title="Email tidak dapat dirubah!"><em><?php echo $tampil['nama']; ?></em></abbr></th>
        </tr>
        <tr>
           <th class="text-left">Username</th>
            <th class="text-left"><abbr title="Email tidak dapat dirubah!"><em><?php echo $tampil['username']; ?></em></abbr></th>
        </tr>
        <tr>
           <th class="text-left">Telepon</th>
            <th class="text-left"><abbr title="Email tidak dapat dirubah!"><em><?php echo $tampil['telepon']; ?></em></abbr></th>
        </tr>
        <tr>
           <th class="text-left">Jenis Kelamin</th>
            <th class="text-left"><abbr title="Email tidak dapat dirubah!"><em><?php echo $tampil['jen_kelamin']; ?></em></abbr></th>
        </tr>
        <tr>
          
            <th class="hidden password"><abbr title="Email tidak dapat dirubah!"><em><?php echo $tampil['password']; ?></em></abbr></th>
        </tr>
    </tbody>
</table>
 <?php } ?>
                                       
                             
                            <!-- I  N  I    L  H  O   -->
                        </div>
                            </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.intro-header -->


    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <p class="copyright text-muted small">Copyright &copy; Informatics Management 2016. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

</body>

</html>
