<?php $__env->startSection('script'); ?>
  $('#kolamDiskusi').addClass("active");
<?php $__env->stopSection(); ?>

<?php $__env->startSection('title','Kolam Diskusi'); ?>

<?php $__env->startSection('main'); ?>
  <div class="container-fluid">
    <div class="page-header">
    <h1><?php echo e($tabelDiskusi->judul); ?></h1>
    </div>
    <p><?php echo $tabelDiskusi->isi; ?></p>
    <div class="panel panel-primary">
      <div class="panel-heading">Komentar</div>
      <div class="panel-body">
        <div class="media">
          <div class="media-left">
            <a href="#">
              <img class="media-object" src="\img\user.png" alt="">
            </a>
          </div>
          <div class="media-body">
            <form class="" action="<?php echo e(url(action('kolamDiskusiController@postKomentar'))); ?>" method="post">
              <?php echo e(csrf_field()); ?>

              <input type="hidden" name="idArtikel" value="<?php echo e($tabelDiskusi->id); ?>">
              <textarea name="komentar" rows="3" style="resize:none" cols="70" placeholder="masukan komentar anda" class="form-control"></textarea>
              <br>
              <button type="submit" name="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
        <hr>
        <?php $__currentLoopData = $tabelKomentar; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tabelKomentar): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="media">
          <div class="media-left media-middle">
            <a href="#">
              <img class="media-object" src="\img\user.png" alt="">
            </a>
          </div>
          <div class="media-body">
            <h4 class="media-heading"><?php echo e(App\User::where('id',$tabelKomentar->id_user)->first()->name); ?></h4>
            <h5><?php echo e($tabelKomentar->created_at); ?></h5>
            <p><?php echo e($tabelKomentar->isi); ?></p>
          </div>
        </div>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <hr>
    </div>
  </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.users', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>