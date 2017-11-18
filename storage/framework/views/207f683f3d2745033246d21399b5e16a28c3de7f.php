<?php $__env->startSection('script'); ?>
  $('#kolamDiskusi').addClass("active");
<?php $__env->stopSection(); ?>

<?php $__env->startSection('title','Kolam Diskusi'); ?>

<?php $__env->startSection('main'); ?>
  <div class="container-fluid">
    <div class="page-header">
    <h1><?php echo e($tabelDiskusi->judul); ?></h1>
    </div>
    <p><?php echo e($tabelDiskusi->isi); ?></p>
  </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.users', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>