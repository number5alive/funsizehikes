---
layout: default
title: Home
sitemap:
 changefreq: 'weekly'
 priority: 0.7
---

<section class="py-5 text-center jumbotron container-fluid" id="jumbotron">
  <div class="row py-lg-5">
    <div class="col-md-4 col-2"></div>
    <div class="col-md-6 col-8 textcontainer">
      <h1 class="fw-light"><b>Eloise (Fun Size) Robbins</b></h1>
      <p class="fw-light"><b>Adventurer, Triple-Crowner, Freelance Adventure Writer</b></p>
    </div>
  </div>
</section>

<!-- Show last news item (if it's less than a week old) -->
{% include newsitems.html limit="1" %}

<div class="album py-2 bg-light">
  <div class="container-fluid">

    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

      {% include titlecard.html 
          title="Professional Writing" 
          ref="/writing"
          imgroot="/images/withfs/patagonia"
      %}
       
      {% include titlecard.html 
          title="Adventure Blogs" 
          ref="/blog"
          imgroot="/images/withoutfs/tentcarcajoue"
      %}
       
      {% include titlecard.html 
          title="More About Me" 
          ref="/about"
          imgroot="/images/justfs/atshelter"
      %}

    </div>
  </div>
</div>

<h1 class="text-center pt-4 fs-4 fst-italic">Latest Blog Post</h1>
{% for post in site.categories.blog limit: 1 %}
    {% include actioncard.html 
          title=post.title
          image=post.tagimg
          leftimg=true
          text=post.excerpt
          link=post.url
          postdate=post.date
    %}
{% endfor %}
 
<h1 class="text-center pt-4 fs-4 fst-italic">Blogs by Category</h1>
<div class="container-fluid infocard">
{% include blognav.html %}
</div>

<h1 class="text-center pt-4 fs-4 fst-italic">Latest Professional Writing</h1>
{% for post in site.categories.writing limit: 2 %}
    {% include actioncard.html 
          title=post.title
          image=post.tagimg
          leftimg=true
          text=post.excerpt
          link=post.link
          linktotab=true
    %}
{% endfor %}
<div class="container-fluid infocard">
 
  <div class="text-center fst-italic">Do you want to be notified when there are new blog posts? <a href="https://feedburner.google.com/fb/a/mailverify?uri=FunSizeHikes&amp;loc=en_US" title="Subscribe">Click here for email notifications</a>.
  </div>
</div>
 
