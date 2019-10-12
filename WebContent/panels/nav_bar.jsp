
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.jsp" style="font-weight:bold;color:white;" >Quiz</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span></a></li>
        
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"> GK <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="mcq.jsp?tbl=gk&cat=polity">Indian Politics</a></li>
            <li><a href="mcq.jsp?tbl=gk&cat=sports">Sports </a></li>
            <li><a href="mcq.jsp?tbl=gk&cat=geography">Geography</a></li>
            <li><a href="mcq.jsp?tbl=gk&cat=history">History</a></li>
          </ul>
        </li>
		
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Aptitude <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="mcq.jsp?tbl=aptitude&cat=trains">Problems On Trains</a></li>
            <li><a href="mcq.jsp?tbl=aptitude&cat=time_and_work">Time And Work</a></li>
            <li><a href="mcq.jsp?tbl=aptitude&cat=percentage">Percentage</a></li>
            <li><a href="mcq.jsp?tbl=aptitude&cat=probability">Probability</a></li>
			 
          </ul>
        </li>
		
		
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Computer<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="mcq.jsp?tbl=computer&cat=ccpp">C/C++</a></li>
            <li><a href="mcq.jsp?tbl=computer&cat=java">JAVA</a></li>
            <li><a href="mcq.jsp?tbl=computer&cat=networking">Networking</a></li>
            <li><a href="mcq.jsp?tbl=computer&cat=dbms">DBMS</a></li>
            <li><a href="mcq.jsp?tbl=computer&cat=operating_system">Operating System</a></li>
          </ul>
        </li>
		
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Reasoning<span class="caret"></span></a>
          <ul class="dropdown-menu">
           
            <li><a href="mcq.jsp?tbl=reasoning&cat=puzzle">Puzzles</a></li>
            <li><a href="mcq.jsp?tbl=reasoning&cat=number_series">Number Series</a></li>
            <li><a href="mcq.jsp?tbl=reasoning&cat=ranking">Ranking</a></li>
            <li><a href="mcq.jsp?tbl=reasoning&cat=blood_realation">Blood Relations</a></li>
          </ul>
        </li>
		
		
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">English<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><div style="background-color:black;font-weight:bold;color:white;width:100%">Select your Level:</div></li>
            <li><a href="mcq.jsp?tbl=english&cat=beginner">Beginner</a></li>
            <li><a href="mcq.jsp?tbl=english&cat=intermediate">Intermediate</a></li>
            <li><a href="mcq.jsp?tbl=english&cat=advance">Advanced</a></li>
          </ul>
        </li>
		
		
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="register.jsp"><%if(session.getAttribute("active_user")==null){ %><span class="glyphicon glyphicon-user"></span> Sign Up <%} %></a></li>
        <li><a href="#"  onclick="login_focus()"><%if(session.getAttribute("active_user")==null){ %><span class="glyphicon glyphicon-log-in"></span> Login<%} %></a></li>
        <li><a href="#"><span class="glyphicon glyphicon-align-left"></span> About US</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-earphone"></span> Contact</a></li>
        <li onclick="toggle_feed()"><a href="#"><span class="glyphicon glyphicon-pencil"></span> Feedback</a></li>
      </ul>
    </div>
  </div>
</nav>