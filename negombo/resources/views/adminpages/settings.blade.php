@extends('layouts.adminmaster')

@section('section')
<div class="paddingTop50">
    <form method="POST" action="{{ route('admin.settings.update') }}">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('Settings') }}</div>

                    <div class="card-body">

                        @csrf

                        <input type="hidden" name="id" value={{ $set_admin->id }}>
                        <div class="form-group row">
                            <label for="discount" class="col-md-4 col-form-label text-md-right">{{ __('Minimum Booking Days') }}</label>
                            <div class="col-md-6">
                                <input type="number" class="form-control" name="max_no_days" value={{ $set_admin->max_no_days }} required>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="closing_time" class="col-md-4 col-form-label text-md-right">{{ __('Closing Time') }}</label>
                            <div class="col-md-6">
                                <input type="time" class="form-control" name="closing_time" value={{ $set_admin->closing_time }} required>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="closing_time" class="col-md-4 col-form-label text-md-right">{{ __('High Season Start') }}</label>
                            <div class="col-md-6">
                                <input type="date" class="form-control" name="hi_season_start" value={{ $set_admin->hi_season_start }} required>

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="closing_time" class="col-md-4 col-form-label text-md-right">{{ __('High Season End') }}</label>
                            <div class="col-md-6">
                                <input type="date" class="form-control" name="hi_season_end" value={{ $set_admin->hi_season_end }} required>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
            {{-- <div class="col-md-4">

        </div> --}}
        </div>
        <div class="row mt-3">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><i class="fa fa-eur" aria-hidden="true"></i> High Season Price ({{ date("d M, Y", strtotime($set_admin->hi_season_start)) }} - {{ date("d M, Y", strtotime($set_admin->hi_season_end)) }})</div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="adult1_price" value={{ $set_admin->adult1_price }} required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="adult2_price" value={{ $set_admin->adult2_price }} required>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="adult3_price" value={{ $set_admin->adult3_price }} required>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="adult4_price" value={{ $set_admin->adult4_price }} required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult1_1baby_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult & 1 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="adult1_1baby_price" value={{ $set_admin->adult1_1baby_price }} required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult1_2baby_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult & 2 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="adult1_2baby_price" value={{ $set_admin->adult1_2baby_price }}>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult1_3baby_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult & 3 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="adult1_3baby_price" value={{ $set_admin->adult1_3baby_price }}>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult2_1baby_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult & 1 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="adult2_1baby_price" value={{ $set_admin->adult2_1baby_price }} required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult2_2baby_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult & 2 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="adult2_2baby_price" value={{ $set_admin->adult2_2baby_price }} required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult3_1baby_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult & 1 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="adult3_1baby_price" value={{ $set_admin->adult3_1baby_price }} required>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><i class="fa fa-eur" aria-hidden="true"></i> Low Season Price</div>
                    <div class="card-body">
                        <div class="form-group row">
                            <label for="adult1_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="lw_adult1_price" value={{ $set_admin->lw_adult1_price }} required>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult2_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="lw_adult2_price" value={{ $set_admin->lw_adult2_price }} required>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult3_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="lw_adult3_price" value={{ $set_admin->lw_adult3_price }} required>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult4_price" class="col-md-4 col-form-label text-md-right">{{ __('4 Adult Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="lw_adult4_price" value={{ $set_admin->lw_adult4_price }} required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult1_1baby_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult & 1 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="lw_adult1_1baby_price" value={{ $set_admin->lw_adult1_1baby_price }} required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult1_2baby_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult & 2 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="lw_adult1_2baby_price" value={{ $set_admin->lw_adult1_2baby_price }}>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult1_3baby_price" class="col-md-4 col-form-label text-md-right">{{ __('1 Adult & 3 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="lw_adult1_3baby_price" value={{ $set_admin->lw_adult1_3baby_price }}>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult2_1baby_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult & 1 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="lw_adult2_1baby_price" value={{ $set_admin->lw_adult2_1baby_price }} required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult2_2baby_price" class="col-md-4 col-form-label text-md-right">{{ __('2 Adult & 2 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="lw_adult2_2baby_price" value={{ $set_admin->lw_adult2_2baby_price }} required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="adult3_1baby_price" class="col-md-4 col-form-label text-md-right">{{ __('3 Adult & 1 Baby Price') }}</label>
                            <div class="col-md-6">
                                <input type="number" step="0.01" class="form-control" name="lw_adult3_1baby_price" value={{ $set_admin->lw_adult3_1baby_price }} required>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group row mt-3">
                    <div class="col-md-6 offset-md-4">
                        <button type="submit" class="btn btn-primary" style="float:right;">
                            {{ __('Save') }}
                        </button>
                    </div>
                </div>
            </div>

        </div>
        {{-- form will end here --}}
    </form>
</div>
{{-- <div style="padding-top: 150px;"></div> --}}
@endsection
