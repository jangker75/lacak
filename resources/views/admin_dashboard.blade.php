@extends('crudbooster::admin_template')
@section('content')

<div class="row">
<div class="col-md-3 col-sm-6 col-xs-12">
  <div class="info-box">
    <span class="info-box-icon bg-yellow"><i class="fa fa-pencil"></i></span>

    <div class="info-box-content">
      <span class="info-box-text">Jumlah Pengguna Aplikasi</span>
      <span class="info-box-number">
      {{	$countClient}}
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
      {{	$countBoxJepara}}
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
      {{$countBoxCibitung}}
      </span>
      	
    </div>

  </div>

</div>
{{-- 
<div class="col-md-3 col-sm-6 col-xs-12">
  <div class="info-box">
    <span class="info-box-icon bg-yellow"><i class="fa fa-pencil"></i></span>

    <div class="info-box-content">
      <span class="info-box-text">Total Box All Lokasi</span>
      <span class="info-box-number">
        {{$countBoxall1}}

      	</span>
    </div>

  </div>

</div>

<div class="col-md-3 col-sm-6 col-xs-12">
  <div class="info-box">
    <span class="info-box-icon bg-yellow"><i class="fa fa-pencil"></i></span>

    <div class="info-box-content">
      <span class="info-box-text">Total Box Tersimpan</span>
      <span class="info-box-number">
        {{$countBoxTersimpan}}

      	</span>
    </div>

  </div>

</div>

<div class="col-md-3 col-sm-6 col-xs-12">
  <div class="info-box">
    <span class="info-box-icon bg-yellow"><i class="fa fa-pencil"></i></span>

    <div class="info-box-content">
      <span class="info-box-text">Total Box Dipinjam</span>
      <span class="info-box-number">
        {{$countBoxDipinjam}}

      	</span>
    </div>

  </div>

</div>

<div class="col-md-3 col-sm-6 col-xs-12">
  <div class="info-box">
    <span class="info-box-icon bg-yellow"><i class="fa fa-pencil"></i></span>

    <div class="info-box-content">
      <span class="info-box-text">Total Box Diambil</span>
      <span class="info-box-number">
        {{$countBoxDiambil}}

      	</span>
    </div>

  </div>

</div>

<div class="col-md-3 col-sm-6 col-xs-12">
  <div class="info-box">
    <span class="info-box-icon bg-yellow"><i class="fa fa-pencil"></i></span>

    <div class="info-box-content">
      <span class="info-box-text">Total Box All Status</span>
      <span class="info-box-number">
        {{$countBoxall2}}

      	</span>
    </div>

  </div> --}}

</div>



</div>
</div>

@endsection