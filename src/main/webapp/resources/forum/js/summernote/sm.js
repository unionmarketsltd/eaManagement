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
		var obj = new Object() ; 
		obj.cat = cat;
		obj.desc = desc;
		obj.topic = topic;
		obj.content = markupStr;
		console.log(obj);
		console.log(cat);
		console.log(topic);
		console.log(markupStr);
		
		return obj;
	}
	
	
	
	 
	
	