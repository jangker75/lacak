
<?php $__env->startSection('content'); ?>

<div class="row">
<div class="col-md-3 col-sm-6 col-xs-12">
  <div class="info-box">
    <span class="info-box-icon bg-yellow"><i class="fa fa-pencil"></i></span>

    <div class="info-box-content">
      <span class="info-box-text">Jumlah Pengguna Aplikasi</span>
      <span class="info-box-number">
      <?php echo e($countClient); ?>

      	</span>
    </div>
  
  </div>

</div>
<div class="col-md-3 col-sm-6 col-xs-12">
  <div class="info-box">
    <span class="info-box-icon bg-yellow"><i class="fa fa-pencil"></i></span>

    <div class="info-box-content">
      <span class="info-box-text">Jumlah Box Jepara</span>
      <span class="info-box-number">
      <?php echo e($countBoxJepara); ?>

      </span>
      	
    </div>

  </div>

</div>
<div class="col-md-3 col-sm-6 col-xs-12">
  <div class="info-box">
    <span class="info-box-icon bg-yellow"><i class="fa fa-pencil"></i></span>

    <div class="info-box-content">
      <span class="info-box-text">Jumlah Box Cibitung</span>
      <span class="info-box-number">
      <?php echo e($countBoxCibitung); ?>

      </span>
      	
    </div>

  </div>

</div>


</div>



</div>
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('crudbooster::admin_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>