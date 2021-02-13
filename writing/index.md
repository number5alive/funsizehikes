---
layout: list 
title: Professional Writing
titleimg: /images/banners/roundislandlake-2048.jpg
---
<div class="container-fluid"> 
  <div class="row-col-1 pt-2">
    <!-- <p>... blogging for fun ... writing professionally ...</p> -->
    <p> I have worked as a writer, editor and communications manager for a diverse set of companies, including book publishers, nonprofits and law firms. My writing has appeared in multiple outdoor publications, including noted thru-hiking website <a href="https://thetrek.co/author/eloise-robbins/">The Trek</a> and popular outdoor podcast <a href="https://dirtbagdiaries.com/">Dirtbag Diaries</a>.</p>
    <p>My writing has also been featured in Alaska themed <a href="https://alaskabooksandcalendars.com/#!/Alaska-Wildlife-A-Photo-Memory-2nd-Ed/p/13049780/category=3004107">books</a> and calendars.</p> 
  </div>
</div>
 
<div class="container-fluid">
{% assign sortedwriting = site.categories.writing | sort: 'priority', "last" %}
{% assign articlecount = 0 %}
{% for post in sortedwriting %}

  {% if articlecount == 0 %}
    {% assign doleft=true %}
  {% else %}
    {% assign doleft=false %}
  {% endif %}
   
  {% include actioncard.html 
        title=post.title
        image=post.tagimg
        leftimg=doleft
        text=post.content
        link=post.link
  %}
  {% assign articlecount = articlecount | plus: 1 | modulo: 2 %}
{% endfor %}
</div>
 
