<%
if(session.getAttribute("admin_login")!="active")
{
	
	response.sendRedirect("admin_login.jsp");
}
%>




<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>select the subject</title>

<script>

</script>


</head>
<body style="background-color:#5D5C61">

<div style="background-color:#222222;color:white;text-align:center;padding:10px;border:1px solid black;border-radius:5px;width:50%;margin:auto;">



<form action="question_saver.jsp" method="get" id="demoForm" class="demoForm">


<h3>
Select the subject
</h3>

<select name="category">
    <option value="gk">gk</option>
    <option value="aptitude">aptitude</option>
    <option value="computer">computer</option> 
    <option value="reasoning">reasoning</option>
    <option value="english">english</option>
    <option value="mix">Mix</option>
</select>


<hr>
<h3>
Select the category
</h3>


<select name="choices[]" id="choices" multiple="multiple" size="4">
    <!-- js populates -->
</select>

<hr>
<h3>
Number of questions to add
</h3>

<input type="number" style="height:20px;" name="number_of_question" required>

<hr>
<br>
<br>
<input style="width:50%;height:45px;margin:auto;background-color:black;color:white;" type="submit" value="NEXT">



</form>


<script type="text/javascript">
/*
From JavaScript and Forms Tutorial at dyn-web.com
Find information and updates at http://www.dyn-web.com/tutorials/forms/
*/

// removes all option elements in select list 
// removeGrp (optional) boolean to remove optgroups
function removeAllOptions(sel, removeGrp) {
    var len, groups, par;
    if (removeGrp) {
        groups = sel.getElementsByTagName('optgroup');
        len = groups.length;
        for (var i=len; i; i--) {
            sel.removeChild( groups[i-1] );
        }
    }
    
    len = sel.options.length;
    for (var i=len; i; i--) {
        par = sel.options[i-1].parentNode;
        par.removeChild( sel.options[i-1] );
    }
}

function appendDataToSelect(sel, obj) {
    var f = document.createDocumentFragment();
    var labels = [], group, opts;
    
    function addOptions(obj) {
        var f = document.createDocumentFragment();
        var o;
        
        for (var i=0, len=obj.text.length; i<len; i++) {
            o = document.createElement('option');
            o.appendChild( document.createTextNode( obj.text[i] ) );
            
            if ( obj.value ) {
                o.value = obj.value[i];
            }
            
            f.appendChild(o);
        }
        return f;
    }
    
    if ( obj.text ) {
        opts = addOptions(obj);
        f.appendChild(opts);
    } else {
        for ( var prop in obj ) {
            if ( obj.hasOwnProperty(prop) ) {
                labels.push(prop);
            }
        }
        
        for (var i=0, len=labels.length; i<len; i++) {
            group = document.createElement('optgroup');
            group.label = labels[i];
            f.appendChild(group);
            opts = addOptions(obj[ labels[i] ] );
            group.appendChild(opts);
        }
    }
    sel.appendChild(f);
}

// anonymous function assigned to onchange event of controlling select list
document.forms['demoForm'].elements['category'].onchange = function(e) {
    // name of associated select list
    var relName = 'choices[]';
    
    // reference to associated select list 
    var relList = this.form.elements[ relName ];
    
    // get data from object literal based on selection in controlling select list (this.value)
    var obj = Select_List_Data[ relName ][ this.value ];
    
    // remove current option elements
    removeAllOptions(relList, true);
    
    // call function to add optgroup/option elements
    // pass reference to associated select list and data for new options
    appendDataToSelect(relList, obj);
};

// object literal holds data for optgroup/option elements
var Select_List_Data = {
    
    // name of associated select list
    'choices[]': {
        
        // names match option values in controlling select list
        gk: {
            
            
                text: ['polity', 'Sports', 'geography','history'],
                value: ['polity','sports', 'geography', 'history']
           
               
            
        },
        aptitude: {
            // example without optgroups
            text: ['train problem', 'time and work', 'percentage', 'probability'],
            value: ['trains', 'time_and_work', 'percentage', 'probability']
        },
        computer: {
        	 text: ['c/c++', 'java', 'networking', 'dbms', 'operating system'],
             value: ['ccpp', 'java', 'networking', 'dbms', 'operating_system']
        },
        reasoning: {
       	 text: ['puzzles', 'number series', 'ranking', 'blood relation'],
            value: ['puzzle', 'number_series', 'ranking', 'blood_relation']
       },
        english: {
          	 text: ['beginner', 'intermediate', 'advance'],
               value: ['beginner', 'intermediate', 'advance']
          },
        mix: {
          	 text: ['level 1', 'level 2', 'level 3','level 4'],
               value: ['level1', 'level2', 'level3','level4']
          }
        
    }
    
};

// populate associated select list when page loads
window.onload = function() {
    var form = document.forms['demoForm'];
    
    // reference to controlling select list
    var sel = form.elements['category'];
    sel.selectedIndex = 0;
    
    // name of associated select list
    var relName = 'choices[]';
    // reference to associated select list
    var rel = form.elements[ relName ];
    
    // get data for associated select list passing its name
    // and value of selected in controlling select list
    var data = Select_List_Data[ relName ][ sel.value ];
    
    // add options to associated select list
    appendDataToSelect(rel, data);
};

</script>





</div>
</body>
</html>