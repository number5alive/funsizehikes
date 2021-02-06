---
layout: withbanner
title: Contact Me
---
 
{% assign id="contactme" %}
{% if jekyll.environment == 'production' %}
{% assign brainsurl="https://funsizehikes-brains.nn.r.appspot.com" %}
{% else %}
{% assign brainsurl="http://localhost:5200" %}
{% endif %}
 
<div class="container-fluid">
  <div class="row">
    <div class="col-4 d-none d-sm-block contactpicture" style="background-image: url('images/justfs/atpctterminus-1024.webp');">
      <div class="contacttext">
      </div>
    </div>
    <div class="col">
       
      <form id="contactform" action="{{brainsurl}}/comments/{{id}}" method="POST" target="formresponse" onsubmit="onSubmit()">
        <p class="text-center">I would love to hear from you. Please use this form to send me a message.</p>
        <div class="mb-3">
          <input class="form-control" type="text" name="name" placeholder="Name" aria-label="name">
        </div>

        <div class="mb-3">
          <input class="form-control" type="email" name="email" placeholder="your@email.com" aria-label="email address">
        </div>
         
        <div class="mb-3">
          <label for="exampleFormControlTextarea1" class="form-label">Message</label>
          <textarea class="form-control" name="comment" placeholder="Leave me a message here" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
      <iframe name='formresponse' class="visually-hidden" style="width:100; height:50"></iframe>
      <div id="contactresponse" class="mb-3 text-center visually-hidden">
        <p>Your message has been sent, thank you for reaching out.</p>
      </div>
    </div>
  </div>
</div>
<script>
function onSubmit() {
  var elform=document.getElementById("contactform");
  var elmsg=document.getElementById("contactresponse");

  if( elform ) {
    elform.classList.add("visually-hidden");
  }
  if( elmsg ) {
    elmsg.classList.remove("visually-hidden");
  }
}
</script>
 
