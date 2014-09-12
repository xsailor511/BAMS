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
function isEmpty(str){
	if(str==null || str.trim().length==0)
		return true;
	else 
		return false;
}

//获取应用绝对路径
var localObj = window.location;

var contextPath = localObj.pathname.split("/")[1];

var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath;

var server_context=basePath;
function search(){
	
	
	url = server_context+'/servlet/Search?name=';
	var name = document.getElementById("name").value;
	if(isEmpty(name)){
		alert("请填写搜索用户名");
		return false;
	}
	url = url + name;
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


//将搜索结果显示在页面中
function changeContent(resultstring){
	var resultdiv = document.getElementById("result");
	var mytable = "<table width='100%' border='1'>"+
	"<tr>"+
	"<th scope='col'>编号</th>"+
	"<th scope='col'>用户名</th>"+
	"<th scope='col'>查看</th>"+
	"</tr>";
	
	var resultobj = eval("(" + resultstring + ")");
	//alert("obj length"+resultobj.length);
	
	mytable = mytable + "<tr>"+
	"<td align='center'>"+resultobj.id+"</td>"+
	"<td align='center'>"+resultobj.name+"</td>"+
	"<td align='center'>"+"<a href="+server_context+"/servlet/GetUserServlet?name="+resultobj.name+" target='_blank'>查看</a></td>"+
	"</tr>";

	mytable = mytable + "</table>";
	resultdiv.innerHTML = mytable;
}