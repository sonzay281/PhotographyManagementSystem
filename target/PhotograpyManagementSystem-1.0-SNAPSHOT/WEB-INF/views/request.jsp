<%@include file="shared/header.jsp" %>
<div class="container">
<div class="form-group"><h3><label>Add Request</label></h3>
    <form method="post" action="/admin/clients/save">
        <div class="form-group">
            <label>Name</label>
            <input type="text"  class="form-control" required="required" name="name" placeholder="Enter Name" />   
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
            <input type="date" class="form-control" required="required" name="dob"/>
        </div>
        <div class="form-group">
            <label>Address</label>
            <input type="text" class="form-control" required="required" name="address" placeholder="Enter address"/>
        </div>
        <div class="pull-right">
            <button type="submit" class="btn btn-success "><span class="glyphicon glyphicon-floppy-save"></span>Save</button>
            <a class="btn btn-warning " href="dashboard.jsp?canceled"><span class="glyphicon glyphicon-remove"></span>Cancel</a> 
        </div>    
    </form>
</div>    
</div>
<%@include file="shared/footer.jsp" %>