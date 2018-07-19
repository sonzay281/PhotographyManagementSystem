<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>


<h3><label>Add Contact</label></h3>
<form method="post" action="/admin/clients/save">
    <div class="form-group">
        <label>First Name</label>
        <input type="text" name="fname" class="form-control" required="required"/>
        <label>Last Name</label>
        <input type="text" name="lname" class="form-control" required="required"/>
    </div>
    <div class="form-group">
        <label>Phone</label>
        <input type="text"   class="form-control" required="required" name="phone" placeholder="Enter contact no." />
    </div>
    <div class="form-group">
        <label>Email</label>
        <input type="email"   class="form-control" required="required" name="email" placeholder="Enter Email"/>  
    </div>
    <div class="form-group">
        <label>Date of Birth</label>
        <input type="date" class="form-control" required="required" name="dateOfBirth"/>
    </div>
    <div class="form-group">
        <label>Address</label>
        <input type="text" class="form-control" required="required" name="address" placeholder="Enter address"/>
    </div>
    <div class="pull-right">
        <button type="submit" class="btn btn-success "><span class="glyphicon glyphicon-floppy-save"></span>Save</button>
        <a class="btn btn-warning " href="redirect:clients/"><span class="glyphicon glyphicon-remove"></span>Cancel</a> 
    </div>    
</form>
</div>

<%@include file="../shared/footer.jsp" %>
