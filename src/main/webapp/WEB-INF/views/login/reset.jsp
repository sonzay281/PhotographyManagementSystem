<!DOCTYPE html>
<html lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="${pageContext.request.contextPath}/assets/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/assets/css/style.css">
    </head>
    <body>
        <div class="main-loader">
             <form method="post" action="save-contact.jsp">
        <div class="form-group">
            <label>Username</label>
            <input type="text"  class="form-control" required="required" name="username" placeholder="Enter Name" />   
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email"   class="form-control" required="required" name="email" placeholder="Enter Email"/>  
        </div>
        <div class="form-group">
            <label>Date of Birth</label>
            <input type="date" class="form-control" required="required" name="dob"/>
        </div>
        <div class="pull-right">
            <button type="submit" class="btn btn-success "><span class="glyphicon glyphicon-floppy-save"></span>Update</button>
            <a class="btn btn-warning " href="/reset-admin"><span class="glyphicon glyphicon-remove"></span>Cancel</a> 
        </div>    
    </form>           
             <p class="developer">Designed by:Sanjaya Sapkota</p>
        </div>
    </body>