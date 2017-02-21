
    var lcractmergeId;
	var hlength;
	
	var qid;
	var qbidid;
	var qtime;
	var qstate;
	
	//弹窗显示
	function AuditingShow1(id,bidid,time,state,currentPageAjax){
		//定义全局变量值
		qid=id;
		qbidid=bidid;
		qtime=time;
		qstate=state;
		//窗体显示
		var Auditing = document.getElementById('Auditing');
		var opict = document.getElementById('opict');
		opict.style.display = 'block';
		Auditing.style.display = 'block';
		//ajax显示--分页	
		  lcractmergeId=id;
		 $.ajax({
			url : "lcract/findLcr.action",
			type : "POST",
			data : "currentPageAjax="+currentPageAjax
		      +"&pageSizeAjax="+10+"&bidid=" + bidid + "&time=" + time + "&state=" + state,
			success : function(data) {
				showJson(data);
				 
			}
		}); 
		
		
	}
	
	
    
	function format(shijianchuo)
	{
	//shijianchuo是整数，否则要parseInt转换
	var time = new Date(shijianchuo);	
	var y = time.getFullYear();
	var m = time.getMonth()+1;
	var d = time.getDate();
	var h = time.getHours();
	var mm = time.getMinutes();
	var s = time.getSeconds();
	return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
	}
	
	
	//ajax异步获得list页面展示
	function showJson(json){
		 var Lists = JSON.parse(json);
		 var List=Lists[0];
		 var size=Lists[1].size;
		 document.getElementById("MaxPage").value = size;
		 document.getElementById("UserLength").value = size;
		 var insertText = "";
		 document.getElementById("jsonTable").innerHTML="";
		 hlength=size;
		 var length = List.length;
		 for(var j=0; j<List.length; j++) {
		 var insertText ="<tr>" +
			                    "<td><input type='checkbox' name='checkboxID' checked='checked' value='"+List[j].id+"'></td>" +
		                        "<td>"+List[j].id+"</td>" +
		                        "<td>"+List[j].lcrname+"</td>" +
		                        "<td>"+List[j].money+"</td>" +
		                        "<td>"+List[j].payment+"</td>" +
		                        
		   						"<td>"+List[j].time+"</td>" +
		   						
		   						"<td>"+List[j].remark+"</td>" +
		   						"<td>"+List[j].state+"</td>" +
		   					"</tr>";
		   document.getElementById("jsonTable").innerHTML = document.getElementById("jsonTable").innerHTML+insertText;
		 }    
		   }
	
	//finance下的理财人放款批准
	 function confirm(){
		var selectedObj = document.getElementsByName("checkboxID");
		var lcractid="";
		var flag="false";
		var count = 0;
		  for(var i=0;i<selectedObj.length;i++){
		   if(selectedObj[i].checked){
		    count = count + 1;
		    lcractid=lcractid+"#"+selectedObj[i].value;
		   }
		  }	  
		  var total=hlength;
		  if(count==total){
			  flag="true";
		  }
		  $.ajax({
				url : "lcractmerge/confirmLcr.action",
				type : "POST",
				data :  "lcractid=" + lcractid + "&flag=" + flag + "&lcractmergeId=" + lcractmergeId,
				success : function(data) {
					showJson(data);
				}
			});
		
	 
	     //隐藏弹窗
		  var Auditing=document.getElementById('Auditing');
		  var opict=document.getElementById('opict');
		    opict.style.display='none';
		    Auditing.style.display='none';
	 }
	 
	 
	 //上一页
	 function up(){
		  //获得全局变量值
		  var id=qid;
		  var bidid=qbidid;
		  var time=qtime;
		  var state=qstate;
		  var currentPage=parseInt(document.getElementById("currentPageToo").value);
		  if(currentPage==1){
		      alert("当前已经是第一页");
		  }else{
			  currentPage=currentPage-1;
			  document.getElementById("currentPageToo").value=currentPage;
			  AuditingShow1(id,bidid,time,state,currentPage);
		  } 
		}
    
	 
	 //下一页
	 function down(){
		  var currentPage=parseInt(document.getElementById("currentPageToo").value);
		  var max = document.getElementById("MaxPage").value;
		  var dqy = document.getElementById("currentPageToo").value;
		  var leng = document.getElementById("UserLength").value;
		  dqy=currentPage.toString();
		    var listlength=Math.ceil(max/10);//页面个数
		    //获得全局变量值
			  var id=qid;
			  var bidid=qbidid;
			  var time=qtime;
			  var state=qstate;
		    if(dqy==listlength || dqy>listlength){
		        alert("当前已经是最后一页");
		      }
		    else{currentPage++;
		    document.getElementById("currentPageToo").value=currentPage;
		    AuditingShow1(id,bidid,time,state,currentPage);
		    } 
		} 
	 
	 
	 

	//root下的理财人放款确认  
	 function affirm(){
		var selectedObj = document.getElementsByName("checkboxID");
		var lcractid="";
		var flag="false";
		var count = 0;
		  for(var i=0;i<selectedObj.length;i++){
		   if(selectedObj[i].checked){
		    count = count + 1;
		    lcractid=lcractid+"#"+selectedObj[i].value;
		   }
		  }
		  var total=hlength;
		  if(count==total){
			  flag="true";
		  }
		  $.ajax({
				url : "lcractmerge/affirmLcr.action",
				type : "POST",
				data :  "lcractid=" + lcractid + "&flag=" + flag + "&lcractmergeId=" + lcractmergeId,
				success : function(data) {
					showJson(data);
				}
			});
		  
		   //隐藏弹窗
		  var Auditing=document.getElementById('Auditing');
		  var opict=document.getElementById('opict');
		    opict.style.display='none';
		    Auditing.style.display='none';
	      
	 
		  
		}
  
  
	 