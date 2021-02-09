{% assign id={{page.id | replace:'/',''}} %}
{% if jekyll.environment == 'production' %}
{% assign brainsurl="https://funsizehikes-brains.nn.r.appspot.com" %}
{% else %}
{% assign brainsurl="http://localhost:5200" %}
{% endif %}
 
<div class="accordion " id="accordionComments">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseCommentForm" aria-expanded="true" aria-controls="collapseCommentForm">
      Click here to leave me a comment
      </button>
    </h2>
    <div id="collapseCommentForm" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionComments">
      <div class="accordion-body">
       
      <form id="commentform" action="{{brainsurl}}/comments/{{id}}" method="POST" target="formresponse" onsubmit="onSubmit()">
        <div class="mb-3">
          <input class="form-control" type="text" name="name" placeholder="Name" aria-label="default input example">
        </div>

        <div class="mb-3">
          <label for="exampleFormControlTextarea1" class="form-label">Comment</label>
          <textarea class="form-control" name="comment" placeholder="Leave me a comment here" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
      <iframe name='formresponse' class="visually-hidden" width='100', height='50'></iframe>
      <div id="commentresponse" class="mb-3 text-center visually-hidden">
        <p>Thank you for your comment! It has been received and should show up here once it's approved.</p>
      </div>
       
       
       
      </div>
    </div>
  </div> 
</div>

<script>
function onSubmit() {
  var elform=document.getElementById("commentform");
  var elmsg=document.getElementById("commentresponse");

  if( elform ) {
    elform.classList.add("visually-hidden");
  }
  if( elmsg ) {
    elmsg.classList.remove("visually-hidden");
  }
}
</script>

<h1 class="fs-5 my-1">Comments</h1>
  {% assign numcomments = 0 %}
  {% for comment in site.data.comments[{{id}}] %}
    {% assign numcomments = numcomments | plus:1 %}
    <div class="row border-bottom">
        <p class="fst-italic my-0">{{ comment.name }} - <span class="text-muted fs-6 fw-lighter">{{ comment.datetime | date: "%B %-d, %Y"}}</span></p>
        <p>{{ comment.comment }}</p>
    </div>
  {% endfor %}
   
{% if numcomments == 0 %}
  <p>None yet</p>
{% endif %}
