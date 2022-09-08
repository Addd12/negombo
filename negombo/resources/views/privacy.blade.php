@extends('layouts.usermaster')

@section('section')

    <div class="container-fluid padding20">
        <div class="row">
            <div class="col-sm-10 offset-sm-1">
                <div class="card">
                    <div class="card-header">
                        <h3><strong>{{ (__('Privacy Policy')) }}</strong></h3>
                          <button id="Italians" onclick="ClickItalian()" value="italy">{{ __('Italian') }}</button>
                     <button id="English" onclick="ClickEnglish()">{{ __('English') }}</button>
                    </div>
                    
                    <div class="card-body" id="card">
                        {{-- <iframe src="{{ asset('images/docs/Privacy policy.pdf') }}" width="100%" height="1000px" value="italy"/></iframe>
                         <iframe src="{{ asset('images/docs/Privacy policy.it.en_final.pdf') }}" width="100%" height="1000px" value="english" /></iframe> --}}
                    </div>

                    <script>
                        let ok=1;

                        function ClickEnglish()
                        {      
                                
                                if(ok==0)
                                {
                                    document.getElementById('card').innerHTML=" ";
                                    ok=1;
                                }
                                document.getElementById('card').innerHTML+='<iframe src="{{ asset('images/docs/Privacy policy.it.en_final.pdf') }}" width="100%" height="1000px" value="italy"/></iframe>';
                                console.log("ok e ",ok);
                                console.log("Card contine ",document.getElementById('card')); 
                                ok=0;
                                

                        }
                        function ClickItalian()
                        {
                                 if(ok==0)
                                {
                                    document.getElementById('card').innerHTML=" ";
                                    ok=1;
                                }
                                document.getElementById('card').innerHTML+='<iframe src="{{ asset('images/docs/Privacy policy.pdf') }}" width="100%" height="1000px" value="italy"/></iframe>';
                                console.log("Card contine ",document.getElementById('card')); 
                                ok=0;

                        
                        }
                    </script>
                    </div>
            
                </div>
            </div>
        </div>
    </div>
@endsection
