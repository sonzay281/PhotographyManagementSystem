<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>
<div class="form-group"><h3><label>Edit Contact</label></h3>
    <form method="post" action="update-contact.jsp">
        <div class="form-group">
            <label>Name</label>
            <input type="text"  class="form-control" required="required" name="name" value=""/>   
        </div>
        <div class="form-group">
            <label>Phone</label>
            <input type="text"   class="form-control" required="required" name="phone"  value=""/>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email"   class="form-control" required="required" name="email" value=""/>  
        </div>
         <div class="form-group">
            <label>Date of Birth</label>
            <input type="date" class="form-control" required="required" name="dob" value=""/>
        </div>
        <div class="form-group">
            <label>Address</label>
            <input type="text" class="form-control" required="required" name="address" value=""/>
        </div>
        
        <div class="pull-right">
            <input type="hidden" name="id" value="">                
            <button type="submit" class="btn btn-success "><span class="glyphicon glyphicon-floppy-save"></span>Update</button>
            <a class="btn btn-warning " href="dashboard.jsp?canceled"><span class="glyphicon glyphicon-remove"></span>Cancel</a> 
        </div>    
    </form>
</div>

<%@include file="../shared/footer.jsp" %>
