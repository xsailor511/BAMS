/**
 * @author xsailor
 */

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
	"<th scope='col'>积分</th>"+
	"<th scope='col'>修改积分</th>"+
	"<th scope='col'>查看</th>"+
	"</tr>";
	
	var resultobj = eval("(" + resultstring + ")");
	//alert("obj length"+resultobj.length);
	
	mytable = mytable + "<tr>"+
	"<td align='center'>"+resultobj.id+"</td>"+
	"<td align='center'>"+resultobj.name+"</td>"+
	"<td align='center'>"+"<input type='text' id="+resultobj.id+" value="+resultobj.goal+" style='width:50px;height:15px;margin-top:7px' /></td>"+
	"<td align='center'>"+"<input type='button' value='修改积分' onclick=updategoal('"+resultobj.id+"','"+resultobj.name+"','"+resultobj.goal+"') "+" /></td>"+
	"<td align='center'>"+"<a href="+server_context+"/servlet/GetUserServlet?name="+resultobj.name+" target='_blank'><font color='blue' >查看</font></a></td>"+
	"</tr>";

	mytable = mytable + "</table>";
	resultdiv.innerHTML = mytable;
}

function updategoal(id,name,oldgoal){
	var goal = document.getElementById(id).value;
	if(goal==oldgoal){
		return ;
	}
	if(isNaN(goal)){
		alert("积分必须是整数");
		document.getElementById(id).value = oldgoal;
		return false;
	}
	if(goal*1<0){
		alert("积分必须大于0");
		document.getElementById(id).value = oldgoal;
		return false;
	}
	
	goal = (goal*1).toFixed(0);
	var url = server_context+"/servlet/UpdateUserGoalServlet?goal="+goal+"&name="+name;
	loadXMLDoc(url, function() {
		
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			resultstring = xmlhttp.responseText;//json 字符串
			if(resultstring=="success"){
				alert("更新成功");
				document.getElementById(id).value = goal;
			}else{
				alert("更新失败");
				
			}
		}
	});
}