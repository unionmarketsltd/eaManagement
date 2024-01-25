$('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 400,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });

 
function getnewtopicobject()
	{
		var cat = new URLSearchParams(window.location.search).get('cat');
		var topic = document.getElementById("topicname").value;
		var desc = document.getElementById("topicdesc").value;
		var markupStr = $('#summernote').summernote('code');
		var thumbnail  = getFirstImageData(markupStr, 140, 100)
		var obj = new Object() ; 
		obj.cat = cat;
		obj.desc = desc;
		obj.topic = topic;
		obj.content = markupStr;
		obj.thumbnail = thumbnail;
		console.log(obj);
		console.log(cat);
		console.log(topic);
		console.log(markupStr);
		
		return obj;
	}
	
	function getedittopicobject()
	{
		var id = new URLSearchParams(window.location.search).get('id');
		var topic = document.getElementById("topicname").value;
		var desc = document.getElementById("topicdesc").value;
		var markupStr = $('#summernote').summernote('code');
		var thumbnail  = getFirstImageData(markupStr, 140, 100)
		var obj = new Object() ; 
		obj.id = id;
		obj.desc = desc;
		obj.topic = topic;
		obj.content = markupStr;
		obj.thumbnail = thumbnail;
		console.log(obj);
		console.log(id);
		console.log(topic);
		console.log(markupStr);
		
		return obj;
	}
	
	
	function checkempty()
	{
		var ok = true;
		var topic = document.getElementById("topicname").value;
		
		var markupStr = $('#summernote').summernote('code');
		
		
		if (topic === null || topic.length === 0)
		{
			alert("Topic title cannot be empty.");
			ok =false;
			return ok;
		}
		
		
		if (markupStr === null || markupStr.length === 0 || markupStr ==="<p><br></p>")
		{
			alert("Topic contents cannot be empty");
			ok = false;
		}
		
		return ok;
	}
	
	
	
	function getFirstImageData(stringsrc, newWidth, newHeight) {

            var output = "";
            // Get the HTML content of the editor
            var editorContent = stringsrc;

            // Create a temporary element to extract and modify the first image
            var tempElement = document.createElement('div');
            tempElement.innerHTML = editorContent;

            // Find the first image tag
            var firstImage = tempElement.querySelector('img');

            if (firstImage) {
                // Create a canvas element

                var isBase64 = firstImage.src.startsWith('data:image');

                if (isBase64) {
                    var canvas = document.createElement('canvas');


                    canvas.width = newWidth;
                    canvas.height = newHeight;

                    // Get the canvas 2D context
                    var ctx = canvas.getContext('2d');

                    // Draw the image on the canvas with the new dimensions
                    ctx.drawImage(firstImage, 0, 0, newWidth, newHeight);

                    // Convert the canvas back to a base64 string
                    var resizedBase64 = canvas.toDataURL('image/jpeg'); // You can specify the desired format

                    output = resizedBase64;

                    console.log(resizedBase64);
                } else {
                    console.log('The first image is an HTTP URL:', firstImage.src);
                    output = firstImage.src;
                }




            } else {
                console.log('No images found in the editor.');
                output = "";
            }


            return output;
        }
        
        
        
