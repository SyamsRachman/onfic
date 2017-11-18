<?php $__env->startSection('script'); ?>
  $('#kolamDiskusi').addClass("active");
<?php $__env->stopSection(); ?>

<?php $__env->startSection('title','Tambah Artikel'); ?>

<?php $__env->startSection('main'); ?>
  <div class="container-fluid">
    <div class="panel panel-default">
      <div class="panel-heading">
        Tambah Artikel Diskusi
      </div>
      <div class="panel-body">

        <form class="" action="#" method="post">
          <div class="form-group">
            <label for="judul">Judul</label>
            <input type="text" class="form-control" name="judul" value="">
          </div>
          <div class="form-group">
            <label for="isi">Isi</label>
            <textarea class="form-control" style="resize:none" name="isi" rows="8" cols="80"></textarea>
          </div>
        </form>
        <button type="submit" class="btn btn-primary" name="button">Post</button>
      </div>
    </div>
  </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.users', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>