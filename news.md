---
layout: list
title: News
sitemap:
 changefreq: 'weekly'
 priority: 0.7
---

<div class="row p-3">
{% for post in site.categories.news %}
  {% if post.categories contains 'news' %}
   
    {% include actioncard.html 
          title=post.title
          image=post.tagimg
          leftimg=true
          text=post.excerpt
    %}
   
   
  {% endif %}
{% endfor %}
</div>
