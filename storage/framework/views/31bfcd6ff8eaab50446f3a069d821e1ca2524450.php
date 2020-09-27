<!-- First, extends to the CRUDBooster Layout -->

<?php $__env->startSection('content'); ?>
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Edit Form</div>
    <div class='panel-body'>
      <form method='post' action='<?php echo e(CRUDBooster::mainpath('edit-save/'.$row->id)); ?>'>
        <?php echo e(csrf_field()); ?>

        <div class='form-group'>
            
          <label>Nomor Box</label>
          <input readonly='true' name='name' required class='form-control' value='<?php echo e($row->kode_box); ?>'/>
          <label>Client</label>
          <input readonly='true' name='name' required class='form-control' value='<?php echo e($row->nama_client); ?>'/>
          <label>Cabang</label>
          <input readonly='true' name='name' required class='form-control' value='<?php echo e($row->nama_cabang); ?>'/>
          <label>Unit Kerja</label>
          <input readonly='true' name='name' required class='form-control' value='<?php echo e($row->nama_unit_kerja); ?>'/>
          <label>Jenis Dokumen</label>
          <input readonly='true' name='name' required class='form-control' value='<?php echo e($row->nama_jenis_dok); ?>'/>
          <label>Nama Pengirim</label>
          <input readonly='true' name='name' required class='form-control' value='<?php echo e($row->nama); ?>'/>
          <label>Lokasi Penyimpanan Vault</label>
          
          <select name="lokasi_vault_id" id="lokasi_vault_id" class="form-control"> 
            <?php $__currentLoopData = $lokasi_vault_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <option value="<?php echo e($item->id); ?>" <?php echo e($item->id  == $row->lokasi_vault_id ? 'selected' : ''); ?>><?php echo e($item->nama); ?></option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </select>
          <label>Tanggal Pemindahan</label>
          <input readonly='true' name='name' required class='form-control' value='<?php echo e($row->tgl_pemindahan); ?>'/>
          
          <label>Periode</label>
          <input name='periode' required class='form-control' value='<?php echo e($row->periode); ?>'/>
          
          <label>Jumlah Bantex</label>
          <input name='jumlah_dok' required class='form-control' value='<?php echo e($row->jumlah_dok); ?>'/>
          
          <label>Nomor Rak</label>
          <input  name='nomor_rak' required class='form-control' value='<?php echo e($row->nomor_rak); ?>'/>
          
          <label>Status</label>
          
          <select name="status_id" id="status_id" class="form-control"> 
            <?php $__currentLoopData = $status_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <option value="<?php echo e($item->id); ?>" <?php echo e($item->id  == $row->status_id ? 'selected' : ''); ?>><?php echo e($item->nama); ?></option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </select>
        </div>
         
       
     
    </div>
                <div class='box-footer'>
                  <div class="form-group">
                            <label class="control-label col-sm-2"></label>
                            <div class="col-sm-10">
                             <a href="<?php echo e(CRUDBooster::mainpath('')); ?>" class="btn btn-default"><i class="fa fa-chevron-circle-left"></i> Back</a>
                             <input type="submit" name="submit" value='Save changes' class="btn btn-success">
                            </div>
                  </div>
                </div>
            </form>
  </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('crudbooster::admin_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>