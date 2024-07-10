@include("layouts/header");
    
  
  
    
 
    <div class="site-section-cover overlay inner-page bg-light" style="background-image: url('{{ $press->head_img }}')" data-aos="fade">
      
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-lg-10">

            <div class="box-shadow-content">
              <div class="block-heading-1">
                <span class="d-block mb-3 text-white"  data-aos="fade-up">{{ $press->date }}<span class="mx-2 text-primary">&bullet;</span> by {{$press->user->name}}</span>
                <h1 class="mb-4" data-aos="fade-up" data-aos-delay="100">{{ $press->name }}</h1>
              </div>
              
              
            </div>
          </div>
        </div>
      </div>
      
    </div>

    
    <section class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-8 mx-auto blog-content">
            <p class="lead">{{ \Illuminate\Support\Str::limit($press->text, 100, $end='...') }}</p>
            <p><img src="{{ $press->img }}" alt="Image" class="img-fluid"></p>
            <p>{{$press->text}}</p>
            
          </div>
          
        </div>
      </div>
    </section>
   
   
    
    
    <div class="site-section" id="press-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="block-heading-1">
              <span>Press Releases</span>
              <h2>More Press</h2>
            </div>
          </div>
          <div class="col-lg-8">
            <ul class="list-unstyled">
              
            @foreach ($press_title->take(5) as $rows)
            

              <li class="mb-4">
                <h2 class="h4"><a href="{{ route('press-single', ['id' => $rows->id]) }}" class="text-black">{{$rows -> name}}</a></h2>
                <span class="d-block text-secondary">{{$rows -> date}}</span>
                <p>{{ \Illuminate\Support\Str::limit($rows->text, 100, $end='...') }}</p>
              </li>

              @endforeach

              
            </ul>
          </div>
        </div>
      </div>
    </div>
    

 
@include("layouts/footer")   