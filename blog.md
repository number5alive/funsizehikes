---
layout: list
title: Blog
titleimg: /images/banners/windriverpanorama-2048.jpg
sitemap:
 changefreq: 'weekly'
 priority: 0.8
---
 
  <div class="container infocard">
    <div class="text-center fst-italic">Do you want to be notified when there are new blog posts? <a href="https://feedburner.google.com/fb/a/mailverify?uri=FunSizeHikes&amp;loc=en_US" title="Subscribe">Click here for email notifications</a>.
    </div>
  </div>

{% for post in site.categories.blog %}
  {% if post.categories contains 'blog' %}
   
    {% include actioncard.html 
          title=post.title
          image=post.tagimg
          leftimg=true
          text=post.excerpt
          link=post.url
          postdate=post.date
    %}
   
  {% endif %}
{% endfor %}
 
  <div class="container infocard">
    <div class="text-center fst-italic">Read more on my 
      <a href="https://eloiserobbins.wordpress.com" title="WordPress" class="text-decoration-none">
              old Wordpress Blog</a>
    </div>
  </div>
 
