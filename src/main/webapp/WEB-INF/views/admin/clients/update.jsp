<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>
<div class="form-group"><h3><label>Edit Contact</label></h3>
    <form method="post" action="/admin/clients/save">
        <div class="form-group">
            <label>First Name</label>
            <input type="text" name="fname" class="form-control" required="required" value="${client.fname}"/>
            <label>Last Name</label>
            <input type="text" name="lname" class="form-control" required="required" value="${client.lname}"/>
        </div>
        <div class="form-group">
            <label>Phone</label>
            <input type="text"   class="form-control" required="required" name="phone"  value="${client.phone}"/>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email"   class="form-control" required="required" name="email" value="${client.email}"/>  
        </div>
        <div class="form-group">
            <label>Date of Birth</label>
            <input type="date" class="form-control" required="required" name="dateOfBirth" id="dob"/>
        </div>
        <div class="form-group">
            <label>Address</label>
            <input type="text" class="form-control" required="required" name="address" value="${client.address}"/>
        </div>

        <div class="pull-right">
            <input type="hidden" name="id" value="${client.id}">                
            <button type="submit" class="btn btn-success "><span class="glyphicon glyphicon-floppy-save"></span>Update</button>
            <a class="btn btn-warning " href="${SITE_URL}/admin/clients/"><span class="glyphicon glyphicon-remove"></span>Cancel</a> 
        </div>    
    </form>
</div>
<script>
    function myDate() {
        document.getElementById("dob").value = "${client.dateOfBirth}";
    }
</script>
<%@include file="../shared/footer.jsp" %>
