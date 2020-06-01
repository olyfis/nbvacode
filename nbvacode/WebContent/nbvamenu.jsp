<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Olympus FIS NBVA Menu</title>
<!--  <link href="includes/appstyle.css" rel="stylesheet" type="text/css" /> 

<style><%@include file="includes/css/reports.css"%></style>
<style><%@include file="includes/css/table.css"%></style>
-->
<style><%@include file="includes/css/header.css"%></style>
<style><%@include file="includes/css/menu.css"%></style>
 <link rel="stylesheet" href="includes/css/calendar.css" />
    <script type="text/javascript" src="includes/scripts/pureJSCalendar.js"></script>




<script language="javascript" type="text/javascript">
 
//Browser Support Code
function ajaxFunction(){
	var ajaxRequest;  // The variable that makes Ajax possible!
	
	try{
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
	} catch (e){
		// Internet Explorer Browsers
		try{
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try{
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e){
				// Something went wrong
				alert("Your browser broke!");
				return false;
			}
		}
	}
	// Create a function that will receive data sent from the server
	ajaxRequest.onreadystatechange = function(){
		if(ajaxRequest.readyState == 4){
			var ajaxDisplay = document.getElementById('ajaxDiv');
			ajaxDisplay.innerHTML = ajaxRequest.responseText;
		// document.actionform.actiontypeprogram.value = ajaxRequest.responseText;

		}
	}

//	var atype = document.actionform.getElementById('actiontype').value;
	var atype = document.actionform.actiontype.value;
	//alert("atype=" + atype);
	//var queryString = "?atype=" + atype + "&wpm=" + wpm + "&sex=" + sex;
	var queryString = "/nbvacode/ajax.jsp?atype=" + atype;
	

	  
	//alert("QS=" + queryString);
	//ajaxRequest.open("GET", "ajax.jsp" + queryString, true);
	ajaxRequest.open("POST", queryString, true);
	ajaxRequest.send(); 
}

 
</script>





<!-- ********************************************************************************************************************************************************* -->

</head>
<body>
    
    
 <%@include  file="includes/header.html" %>


<%-- Req for Salesforce Ajax menu 
<jsp:include page="/sfquery" flush="true" /> --%>
<c:out value="${strArrID}"></c:out>
 
  <c:forEach items="${strArrID}" var="id">
            ${id.id} <br />
        </c:forEach>
        
<!--   <img src="includes\images\logo.jpg" alt="logo"  height="100" width="225" align="right"> -->


<div style="padding-left:20px">
  <h3>FIS NBVA Contract/Asset Applications Page</h3>
</div>

<BR>

<h5>This page will provide access to NBVA reports and data.<br>
Please select an action from the menu and provide the required
parameters if necessary.</h5>



<h5>Note: <font color="red">Requires Javascript to be enabled.</font> <BR>
The dropdown menus are dynamically loaded. You may need to reload 
to refresh the menus.
</h5>

<BR>


	<form name="actionform" method="post" action="nbvaresults.jsp">

<table class="a" width="40%"  border="1" cellpadding="1" cellspacing="1">
  <tr> <th class="theader"> Olympus FIS NBVA Applications</th> </tr>
  <tr>
    <td class="table_cell">
    <!--  Inner Table -->
    <table class="a" width="100%"  border="1" cellpadding="1" cellspacing="1">
  <tr>
        <td width="40" valign="bottom">
        <b>Action:</b> 
        <select name="actiontype" onchange='ajaxFunction()' >
          <option value="0">Select Action</option>
          
          <option value="100">FIS NBVA List Assets</option>
          <option value="125">FIS NBVA Code Assets</option>
          <option value="150">FIS NBVA Disposition Codes List</option>
           
        </select>
	</td>

    <td  valign="bottom" class="c">
	<div id='ajaxDiv'> </div>
	</td>
    <td> 
    <INPUT type="submit" value="Run">  
    </td>
    
   </tr></table>
    
    
    </td>
  </tr>
</table>


 </form>
<h5>If you require access to the reports, please contact: John.Freeh@olympus.com</h5>
</body>
</html>