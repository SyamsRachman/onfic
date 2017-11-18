<?php $__env->startSection('script'); ?>
  $('#pantauDiskusi').addClass("active");
<?php $__env->stopSection(); ?>

<?php $__env->startSection('title','Kolam Diskusi'); ?>

<?php $__env->startSection('main'); ?>
  <div class="row">
    <div class="container-fluid">
    <header>
      <button type="button" class="btn btn-default" name="button"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Tambah Diskusi</button>
    </header>
  </div>
  </div>
  <br>
  <div class="row">
    <?php $__currentLoopData = $tabelDiskusi; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tabelDiskusi): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="col-sm-6 col-md-4"> 
      <div class="thumbnail">
        <div class="caption">
          <h3><?php echo e($tabelDiskusi->judul); ?></h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <p><a href="/kolamDiskusi/<?php echo e($tabelDiskusi->id); ?>/admin" class="btn btn-primary" role="button">Baca</a></p>
        </div>
      </div>
    </div> 
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>