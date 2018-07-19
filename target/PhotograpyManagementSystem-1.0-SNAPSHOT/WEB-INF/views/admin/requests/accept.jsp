<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>


<h3><label>Accept Request</label></h3>
<form method="post" action="/admin/requests/accept/save/">
    <div class="col-md-6">
        <label>Full Name</label>
        <input type="text" name="fname" class="form-control" required="required" value="${request.fname}"/>
    </div>
    <div class="col-md-6">
        <label>Last Name</label>
        <input type="text" name="lname" class="form-control" required="required" value="${request.lname}"/>
    </div>
    <div class="col-md-6">
        <label>Phone</label>
        <input type="text"   class="form-control" required="required" name="phone" placeholder="Enter contact no." value="${request.phone}"/>
    </div>
    <div class="col-md-6">
        <label>Email</label>
        <input type="email"   class="form-control" required="required" name="email" placeholder="Enter Email" value="${request.email}"/>  
    </div>
    <div class="col-md-6">
        <label>Date of Birth</label>
        <input type="none" class="form-control" id="myDOB" name="dateOfBirth" />
    </div>
    <div class="col-md-6">
        <label>Address</label>
        <input type="text" class="form-control" required="required" name="address" placeholder="Enter address" value="${request.address}"/>
    </div>
    <div class="col-md-4">
        <label>Title</label>
        <input name="title" class="form-control" value="${request.eventTitle.title}" readonly/>
    </div>
    <div class="col-md-2">
        <label>Title ID</label>
        <input type="number" class="form-control" name="eventTitle.id" id="eId" readonly/>
    </div>
    <div class="col-md-6">
        <label>Date</label>
        <input type="text" name="eventDate" id="eventDate" class="form-control" required="required"/>
    </div>
    <div class="col-md-12">
        <label>Description</label>
        <textarea name="description" class="form-control" required="required" style="height:200px">${request.description}</textarea>
    </div>
    <button type="submit" class="btn btn-success pull-right">Save</button>
</form>
</div>
<script>
    function myDate() {

        var dob = '${request.dateOfBirth}';
        var dYear = dob.slice(0, 4);
        var dMonth = dob.slice(5, 7);
        var dDay = dob.slice(8, 11);

        var eDate='${request.eventDate}';
        var eYear = eDate.slice(0, 4);
        var eMonth = eDate.slice(5, 7);
        var eDay = eDate.slice(8, 11);

        document.getElementById("myDOB").value = dMonth +'/'+dDay +'/'+ dYear;
        document.getElementById("eventDate").value =eMonth +'/'+ eDay +'/'+ eYear;
        document.getElementById("eId").value = '${request.eventTitle.id}';
    }
</script>
<%@include file="../shared/footer.jsp" %>
