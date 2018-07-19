<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>
<h1>Add events</h1>
<form method="post" action="/admin/events/save/${request.id}">
    <div class="row">
        <div class="form-group">
            <div class="col-md-12">
                <label>Title</label>
                <input type="text" name="title" class="form-control" required="required" value="${request.eventTitle.title} ${request.lname}"/>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-md-12">
                <label>Description</label>
                <textarea name="description" class="form-control" required="required" style="height:200px">${request.description}</textarea>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label>Contact Person</label>
                <input type="text" name="name" class="form-control" required="required" value="${request.fname} ${request.lname}"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Date</label>
                <input type="date" name="date" id="eventDate" class="form-control" required="required"/>
            </div>
        </div>

    </div>
    <button type="submit" class="btn btn-success">Save</button>
</form>
<script>
    function myDate() {
        document.getElementById("eventDate").value = "${request.eventdate}";
    }
</script>

<%@include file="../shared/footer.jsp" %>