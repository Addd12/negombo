@extends('layouts.adminmaster')

@section('section')

<div class="container vh-100 pt-2">
	<h3 class="display-5 text-center">Profile Setting</h3>
	<hr>
	<div class="row justify-content-center">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-3 mx-auto">
					<div class="img-fluid">
						<img src="{{ asset('images/siteimages/profileimage.png') }}" class="img-thumbnail rounded-circle" alt="">
					</div>
				</div>
			</div>
			<div class="row pt-4">
				<div class="col-md-6 mx-auto">
					<h4 class="display-4 text-center">{{ Auth::user()->name }}</h4>
				</div>
			</div>
			<hr>
			<div class=" ml-5 row lead justify-content-center">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-4">
							Role : 
						</div>
						<div class="col-md-6">
							<p class="text-capitalize"> {{ Auth::user()->role }}</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							Email : 
						</div>
						<div class="col-md-6">
							<p>{{ Auth::user()->email }}</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							Member since : 
						</div>
						<div class="col-md-6">
							<p class="text-capitalize"> {{ Auth::user()->created_at }}</p>
						</div>
					</div>
				</div>	
			</div>
			<hr>
			
		</div>
		
	</div>
	<div class="row d-flex justify-content-around">
		<div class="col-md-6 mb-4">
			<div class="row ">
				<div class="col-md-12">
					<div class="row justify-content-between">
						@if (Auth::user()->role=="admin")
				<div class="col-md-4">
					<a class="btn btn-success" href="{{ route('register') }}">{{ __('Register Member') }}</a>
				</div>
				@endif
				<div class="col-md-4">
					<a href="{{ route('admin.staffs.edit', Auth::user()->id) }}" type="button" class="btn btn-danger" >{{ __('Edit Profile') }}</a>
				</div>	
					</div>
				</div>
			</div>
		</div>
	</div>
</div>




@endsection
