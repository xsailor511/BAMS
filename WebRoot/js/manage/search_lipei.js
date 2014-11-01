

/**
	 * @author xsailor
	 */
	
	
	function search(){
		
		
		url = server_context+'/servlet/SearchLiPeiServlet?shigu=';
		var shigu = document.getElementById("shigu").value;
		if(isEmpty(shigu)){
			alert("请填写搜索关键字");
			return false;
		}
		url = url + shigu;
		loadXMLDoc(url, function() {
			//alert("readState:"+xmlhttp.readyState+" status:"+xmlhttp.status);
			
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				resultstring = xmlhttp.responseText;//json 字符串
				//if(resultstring=="[]")
				//alert(resultstring);
				
				if(resultstring!=null&&resultstring!=""&&resultstring!=0&&resultstring!="[]"&&resultstring!="none"){
					changeContent(resultstring);//将结果显示到页面上
				}else{
					alert("未检索到符合条件的数据");
					document.getElementById("result").innerHTML = "";
					
				}
			}
		});
	}
	
	
	function changeContent(resultstring){
		var resultdiv = document.getElementById("result");
		var myhtml = "<ul>"+
		"<li class='id'>编号</li>"+
		
		"<li class='username'>用户名</li>"+
		"<li class='baoxiandanhao'>保险单号</li>"+
		"<li class='see'>回复</li>";
		var obj1 = eval ("(" + resultstring + ")");
		for(var j=0;j<obj1.length;j++){
			myhtml = myhtml+"<li class='id' >"+obj1[j].id+"</li>";
			myhtml = myhtml+"<li class='username' >"+obj1[j].username+"</li>";
			myhtml = myhtml+"<li class='baoxiandanhao' >"+obj1[j].baoxiandanhao+"</li>";
			
			myhtml = myhtml+"<li class='see' ><a style='color:blue' href="+server_context+"/servlet/GetCaseServlet?id="+obj1[j].id+" target='_blank'>回复</a></li>";
//			if(obj1[j].mark==1){
//				myhtml = myhtml+"<li class='button' id='input"+obj1[j].id+"' >已受理&nbsp;|&nbsp;"+"<input type='button' class='mybutton' value='取消' onclick='unmark("+obj1[j].id+")' />"+"</li>";
//			}else{
//				myhtml = myhtml+"<li class='button' id='input"+obj1[j].id+"' >未受理&nbsp;|&nbsp;"+"<input type='button' class='mybutton' value='受理' onclick='mark("+obj1[j].id+")' />"+"</li>";
//			}
			
		}
		myhtml = myhtml+"</ul>";
		resultdiv.innerHTML = myhtml;
	}
	
	function mark(id){
		url = server_context+'/servlet/MarkLiPeiServlet?id='+id;
		//alert("some");
		loadXMLDoc(url, function() {
			//alert("readState:"+xmlhttp.readyState+" status:"+xmlhttp.status);
			
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				resultstring = xmlhttp.responseText;//json 字符串
				if(resultstring=="success"){
					//alert("受理成功");
					var temp = document.getElementById("input"+id);
					temp.innerHTML = "已受理&nbsp;|&nbsp;"+"<input type='button' class='mybutton' value='取消' onclick='unmark("+id+")' />";
				}else{
					alert("受理失败");
				}
				
			}
		});
	}
	
	function unmark(id){
		url = server_context+'/servlet/UnmarkLiPeiServlet?id='+id;
		//alert("some");
		loadXMLDoc(url, function() {
			//alert("readState:"+xmlhttp.readyState+" status:"+xmlhttp.status);
			
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				resultstring = xmlhttp.responseText;//json 字符串
				if(resultstring=="success"){
					//alert("取消成功");
					var temp = document.getElementById("input"+id);
					temp.innerHTML = "未受理&nbsp;|&nbsp;"+"<input type='button' class='mybutton' value='受理' onclick='mark("+id+")' />"+"</li>";
				}else{
					alert("取消失败");
				}
				
			}
		});
	}