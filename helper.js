       
      /***
       * addActionCard
       * \title - The heading to use within the card (Optional, use "" for no title)
       * \image - the image to show in the card
       * \bLeft - True if the picture should be to the right of the text, false if left
       * \text - The text blurb for the card
       *
       * \returns - The HTML code for the action card
       ***/
      const ACTION_HTML_START='<div class="container infocard"><div class="row">';
      const ACTION_HTML_IMG='<div class="col-3"><img style="width:100%" class="card-img-bottom" src="ACTION_IMG" alt="ACTION"></div>';
      const ACTION_HTML_TITLE='<h1 class="align-middle">ACTION_TITLE</h1>';
      const ACTION_HTML_TEXT='<p class="card-text">ACTION_TEXT</p>';
      const ACTION_HTML_LINK='<a class="text-decoration-none" style="color:inherit" href="ACTION_LINK">';
      const ACTION_HTML_END='</div> </div> ';
      function addActionCard(title, image, bLeft, text, link=undefined) {
        var ACTION_HTML_TITLETEXT='<div class="col-9">' + (title ? ACTION_HTML_TITLE : "") + ACTION_HTML_TEXT + '</div>';
        // Construct the HMTL for the block as either image on the right or image on the left
        var html=(link ? ACTION_HTML_LINK : "") +
                    ACTION_HTML_START +            
                    (bLeft ? ACTION_HTML_IMG : ACTION_HTML_TITLETEXT) +
                    (bLeft ? ACTION_HTML_TITLETEXT : ACTION_HTML_IMG) +
                    ACTION_HTML_END +
                  (link ? "</a>" : "") ;

        // Now replace the magic flags in that text, with this specific block data
        html=html.replace(/ACTION_IMG/g, image);
        html=html.replace(/ACTION_TEXT/g, text);
        html=html.replace(/ACTION_TITLE/g, title);
        html=html.replace(/ACTION_LINK/g, link);
        return html;
      }

