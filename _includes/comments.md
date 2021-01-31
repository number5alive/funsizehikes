{% assign id={{page.id | replace:'/',''}} %}

<nav class="navbar navbar-light bg-light border-top">
  <div class="container-fluid">
    <p class="navbar-brand">Click here to leave me a comment</p>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <form action="http://localhost:5100/comment/{{id}}" method="POST" target="_blank">
        <div class="mb-3">
          <input class="form-control" type="text" name="name" placeholder="Name" aria-label="default input example">
        </div>

        <div class="mb-3">
          <label for="exampleFormControlTextarea1" class="form-label">Comment</label>
          <textarea class="form-control" name="comment" placeholder="Leave me a comment here" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>
</div>

<h1 class="fs-5">Comments</h1>
{% for comment in site.data.comments[{{id}}] %}
  <div class="row border-bottom">
      <p class="fst-italic my-0">{{ comment.name }}</p>
      <p>{{ comment.comment }}</p>
  </div>
{% endfor %}
