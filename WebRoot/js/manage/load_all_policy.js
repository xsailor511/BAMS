/**
 * @author xsailor
 */
var xmlhttp;
function loadXMLDoc(url, cfunc) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}

	xmlhttp.open("POST", url, false);
	xmlhttp.onreadystatechange = cfunc;
	xmlhttp.setRequestHeader("context-type", "text/html;charset=UTF-8");
	xmlhttp.send();
}

loadXMLDoc(url, function() {
	//alert("readState:"+xmlhttp.readyState+" status:"+xmlhttp.status);
	if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
		resultstring = xmlhttp.responseText;//json 字符串
		
		if(resultstring!=null&&resultstring!=""&&resultstring!=0&&resultstring!="[]"&&resultstring!="none"){
			changeContent(resultstring);//将结果显示到页面上
		}
		else{
			alert("未检索到符合条件的数据");
			document.getElementById("result").innerHTML = "";
			
		}
	}
});