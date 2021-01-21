---
layout: default
title: Home
---

<main>

  <section class="py-5 text-center jumbotron" id="jumbotron">
    <div class="row py-lg-5">
      <div class="col-lg-4 col-md-2"></div>
      <div class="col-lg-6 col-md-8 mx-auto container">
        <h1 class="fw-light"><b>Eloise (Fun Size) Robbins</b></h1>
        <p class="fw-light"><b>Adventurer, Triple-Crowner, Freelance Adventure Writer</b></p>
      </div>
    </div>
  </section>

  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
         
        <div class="col">
          <div class="card shadow-sm">
            <div class="bg-image">
              <a href="./writing.html">
              <picture>
                <!-- Somewhat non-intuitively, this picture is bigger at middle screen sizes
                     because the cards get stacked -->
                <source type="image/webp" media="(max-width:350px)" srcset="./images/withfs/patagonia-320.webp">
                <source type="image/webp" media="(max-width:580px)" srcset="./images/withfs/patagonia-1024.webp">
                <source type="image/webp" media="(min-width:551px)" srcset="./images/withfs/patagonia-640.webp">
                <img src="./images/withfs/patagonia-1024.jpg" class="img-fluid" alt="Professional Writing Background"/>
              </picture>
              <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
                <div class="d-flex justify-content-center align-items-center h-100">
                  <p class="text-white mb-0">Professional Writing</p>
                </div>
              </div>
              </a>
            </div>          

            <div class="card-body">
              <p class="card-text">A summary of some of my professional freelance articles.</p>
            </div>
          </div>
        </div>
         
        <div class="col">
          <div class="card shadow-sm">
            <div class="bg-image">
              <a href="https://eloiserobbins.wordpress.com">
              <picture>
                <!-- Somewhat non-intuitively, this picture is bigger at middle screen sizes
                     because the cards get stacked -->
                <source type="image/webp" media="(max-width:350px)" srcset="./images/withoutfs/tentcarcajoue-320.webp">
                <source type="image/webp" media="(max-width:580px)" srcset="./images/withoutfs/tentcarcajoue-1024.webp">
                <source type="image/webp" media="(min-width:551px)" srcset="./images/withoutfs/tentcarcajoue-640.webp">
                <img src="./images/withoutfs/tentcarcajoue-1024.jpg" class="img-fluid" alt="Adventure Blogs"/>
              </picture>
              <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
                <div class="d-flex justify-content-center align-items-center h-100">
                  <p class="text-white mb-0">Adventure Blogs</p>
                </div>
              </div>
              </a>          
            </div>          

            <div class="card-body">
              <p class="card-text">Blogs from my PCT, CDT, AT, and Long Trail thru hikes.</p>
            </div>
          </div>
        </div>
 
        <div class="col">
          <div class="card shadow-sm">
            <div class="bg-image">
              <a href="./about.html">
              <picture>
                <!-- Somewhat non-intuitively, this picture is bigger at middle screen sizes
                     because the cards get stacked -->
                <source type="image/webp" media="(max-width:350px)" srcset="./images/justfs/atshelter-320.webp">
                <source type="image/webp" media="(max-width:580px)" srcset="./images/justfs/atshelter-1024.webp">
                <source type="image/webp" media="(min-width:551px)" srcset="./images/justfs/atshelter-640.webp">
                <img src="./images/justfs/atshelter-1024.jpg" class="img-fluid" alt="More About Me"/>
              </picture>
              <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
                <div class="d-flex justify-content-center align-items-center h-100">
                  <p class="text-white mb-0">More About Me</p>
                </div>
              </div>
              </a>
            </div>          

            <div class="card-body">
              <p class="card-text">A little bit more about myself, my adventures, and what's coming up next.</p>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>

  <!-- Add a small section on the adventures on our horizon -->
  <div data-include="horizon.html"></div>
  {% include horizon.html %}
   
  <!-- Add our block of instagram pictures to this page -->  
  {% include instagram.html %}

</main>
