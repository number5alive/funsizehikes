---
layout: list
title: News
---

Here is the latest news... actually, this is
 
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
