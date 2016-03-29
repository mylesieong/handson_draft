/**
 * Central method dispatcher to coordinate ajax delay problem
 * note:1. json string should keep string until use(so pass it in string within js)
 *      2. the delay problem is solved by injecting caller's info and ajax call-
 *         back when ready.
 */
function callerDispatcher(caller,data){
	//alert("callerDispatcher");
	if(caller=="story:getStoryCaller"){
		//dispatch to appendStory with data
		appendStory(data);
	}
	if(caller=="story:getLatestCaller"){
		//dispatch to loadStories with data
		getStories(data);
	}
}

/**
 * Web Servlet: /story 
 * Case1: 
 * 	request:{op:get-story, id:0090020211}
 * 	response:{title:,introduction:,picture:,content:,createdate:,author:,category:}
 * Case2: 
 * 	request:{op:get-latest, quantity:5}
 * 	response: {id:[id1,id2,id3,id4...]}
 */
function storyService(caller,para1,para2,para3) {
	
	/* write request depend on para1(op)*/
	var request;
	if (para1=="get-latest"){
		request='{"op":"get-latest","quantity":'+para2+'}';
	}else if (para1=="get-story"){
		request='{"op":"get-story","id":"'+para2+'"}';  
	}
  
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		//if (xhttp.readyState == 4 && xhttp.status == 200) {
		//  	return xhttp.responseText;
		//}
		/*mock return*/ 
		var output;
		if (para1=="get-latest"){
			//alert("storyService:return get-latest");
			output='[204004,21320,344104,21414,43555]';
		}else if (para1=="get-story"){
			//alert("storyService:return get-story");
			output='{"id":123144,"title":"Story Title", "introduction":"140 words introduction of the article", "picture":"media/wechat.svg", "content":"Story content", "createdate":"20160329", "author":"Myles", "category":"beijing"}';  
		}
		//alert(output);
		callerDispatcher(caller, output);
		/*/mock return*/
	};
	xhttp.open("POST", "/story", true);
	xhttp.setRequestHeader("Content-type","applcation/json");
	xhttp.send(request);

}

