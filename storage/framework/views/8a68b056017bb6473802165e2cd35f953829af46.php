<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title><?php echo $__env->yieldContent('title'); ?></title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script type="text/javascript" src="/js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <script type="text/javascript" src="<?php echo e(asset('vendor/unisharp/laravel-ckeditor/ckeditor.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(asset('vendor/unisharp/laravel-ckeditor/adapters/jquery.js')); ?>"></script>
    <script type="text/javascript">
      $( document ).ready(function(){
        <?php echo $__env->yieldContent('script'); ?>
      });
      </script>
  </head>
  <body>
      <div class="container-fluid">
    <header>
        <nav class="navbar navbar-default">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">ONFIC</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

      <ul class="nav navbar-nav navbar-right">
        <li id="hitungPersentase"><a href="/hitungPersentase">Hitung Persentase</a></li>
        <li id="riwayatPersentase"><a href="/riwayatPersentase">Riwayat Perhitungan</a></li>
        <li id="kolamDiskusi"><a href="/kolamDiskusi">Kolam Diskusi</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Akun <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Profil</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="<?php echo e(url(action('LoginController@logout'))); ?>">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
</nav>
    </header>
    <main>
      <?php echo $__env->yieldContent('main'); ?>
    </main>
  </div>
  </body>
</html>
