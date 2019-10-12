<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0); %>
    
<!DOCTYPE html>
<html lang="en">

<head>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  
  
<%@include file="panels/files_includer.jsp"  %>
  
 <script> 
 <%@include file="jscript/feedback_toggle_js.jsp" %>


function login_focus()
{
document.getElementById("usr").focus();
}

<%@include file="jscript/login_validator_js.jsp" %>
</script>
</head>


<body style="background-color:#5D5C61;">

<!-- logo row -->
<!--  
<div style="background-color:#009933;color:white;font-weight:bold;font-size:4em;">
10 minute Quiz
</div>-->


<!-- bootstrap nav bar  -->

<%@include file="panels/nav_bar.jsp" %>

<!-------nav bar ends-------->


<br>
<br>
<br>


<!--main row  -->
<div class="container-fluid">

<!-- working window col-9-->
    <div class="col-lg-9" style="background-color:transparent;">
	
	
<div style="background-color:white;overflow:auto;height:644px;margin-right:-33px">
	<br>
	<div class="main_window_heading">
	
		Select Subject to begin:
			
			
	</div>
	<hr>
	
	<table>
	
	<tr>
	
	<td>
		<div class="container">
		<img src="photo/gk.png" alt="Avatar" class="image" style="width:100%">
		<div class="box_title"><div class="title_text">General Knowledge</div>
		</div>
		<div class="middle" style="border:0px solid black;width:80%;">
		<div class="text"><a href="mcq.jsp?tbl=gk&cat=polity">Indian Politics</a></div>
		<div class="text"><a href="mcq.jsp?tbl=gk&cat=sports">Sports</a></div>
		<div class="text"><a href="mcq.jsp?tbl=gk&cat=geography">Geography</a></div>
		<div class="text"><a href="mcq.jsp?tbl=gk&cat=history">history</a></div>
		
		</div>
		</div>
	</td>
	
		
	<td>
		<div class="container">
		<img src="photo/apti.png" alt="Avatar" class="image" style="width:100%">
		<div class="box_title"><div class="title_text">Aptitude</div>
		</div>
		<div class="middle" style="border:0px solid black;width:80%;">
		<div class="text"><a href="mcq.jsp?tbl=aptitude&cat=trains">Problems on Trains</a></div>
		<div class="text"><a href="mcq.jsp?tbl=aptitude&cat=time_and_work">Time and Work</a></div>
		<div class="text"><a href="mcq.jsp?tbl=aptitude&cat=percentage">Percentage</a></div>
		<div class="text"><a href="mcq.jsp?tbl=aptitude&cat=probability">Probability</a></div>
		
		
		</div>
		</div>
	</td>
		
	<td>
		<div class="container">
		<img src="photo/computer.png" alt="Avatar" class="image" style="width:100%">
		<div class="box_title"><div class="title_text">Computer</div>
		</div>
		<div class="middle" style="border:0px solid black;width:80%;">
		<div class="text"><a href="mcq.jsp?tbl=computer&cat=ccpp">C/C++</a></div>
		<div class="text"><a href="mcq.jsp?tbl=computer&cat=java">JAVA</a></div>
		<div class="text"><a href="mcq.jsp?tbl=computer&cat=networking">Networking</a></div>
		<div class="text"><a href="mcq.jsp?tbl=computer&cat=dbms">DBMS</a></div>
		<div class="text"><a href="mcq.jsp?tbl=computer&cat=operating_system">Operating System</a></div>
		
		</div>
		</div>
	</td>
	
	</tr>
	
	<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
	
	
	<tr>
	
	<td>
		<div class="container">
		<img src="photo/reasoning.png" alt="Avatar" class="image" style="width:100%">
		<div class="box_title"><div class="title_text">Reasoning</div>
		</div>
		<div class="middle" style="border:0px solid black;width:80%;">
		<div class="text"><a href="mcq.jsp?tbl=reasoning&cat=puzzle">Puzzles</a></div>
		<div class="text"><a href="mcq.jsp?tbl=reasoning&cat=number_series">Number Series</a></div>
		<div class="text"><a href="mcq.jsp?tbl=reasoning&cat=ranking">Ranking</a></div>
		<div class="text"><a href="mcq.jsp?tbl=reasoning&cat=blood_realation">Blood relations</a></div>
		
		</div>
		</div>
	</td>
	
		
	<td>
		<div class="container">
		<img src="photo/english.png" alt="Avatar" class="image" style="width:100%">
		<div class="box_title"><div class="title_text">English</div>
		</div>
		<div class="middle" style="border:0px solid black;width:80%;">
		
		<div class="text"><a href="mcq.jsp?tbl=english&cat=beginner">For Beginner</a></div>
		<div class="text"><a href="mcq.jsp?tbl=english&cat=intermediate">For Intermediate</a></div>
		<div class="text"><a href="mcq.jsp?tbl=english&cat=advance">For Advance</a></div>
		
		</div>
		</div>
	</td>

	
	<td>
		<div class="container">
		<img src="photo/other.png" alt="Avatar" class="image" style="width:100%">
		<div class="box_title"><div class="title_text">All Subjects</div>
		</div>
		<div class="middle" style="border:0px solid black;width:80%;">
		<div class="text"><a href="mcq.jsp?tbl=mix&cat=level1">LEVEL 1</a></div>
		<div class="text"><a href="mcq.jsp?tbl=mix&cat=level2">LEVEL 2</a></div>
		<div class="text"><a href="mcq.jsp?tbl=mix&cat=level3">LEVEL 3</a></div>
		<div class="text"><a href="mcq.jsp?tbl=mix&cat=level4">LEVEL 4</a></div>
		
		</div>
		</div>
	</td>
	</tr>
	</table>
<br>
	<br>
	<br>
</div>
	
	
	
	</div><!--col 9 working window ends-->
    
	

	
	
	<div class="col-lg-3" style="background-color:#222222;">
		
		<!--login form-->
		
		
		<%@include file="panels/login_panel.jsp" %>
		
		
		
		<!--login end-->
		<hr>
		
		
		
		<!-- registeration form button-->
		<%@include file="panels/register_button.jsp" %>
		
		<hr>
		
		<!-- instructions -->
		
		<%@include file="panels/instructions_panel.jsp" %>
		<!--instructions end-->
		
		<br>
		
		
	</div><!--col 3-->
  
</div>
<!--main row div end-->
<br>



<!-- feedback toggle window -->
<%@include file="panels/feedback_toggle_panel.jsp" %>
<!--  feedback toggle window ends -->



<!-- footer -->
<%@include file="panels/footer_panel.jsp" %>
<!-- footer ends -->

</body>
</html>