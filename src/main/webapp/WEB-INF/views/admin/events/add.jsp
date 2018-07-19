<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>
<h1>Add events</h1>
<form method="post" action="/admin/events/save">
    <div class="row">
        <div class="form-group">
            <div class="col-md-6">
                <label>Title</label>
                <select class="form-control">
                    <c:forEach var="event" items="${events}">
                        <option>${event.title}  [ID:${event.id}] </option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-md-6">
                <label>Title ID</label>
                <input type="number" name="eventTitle" class="form-control" required="required"/>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label>Contact Person</label>
                <select class="form-control">
                    <c:forEach var="client" items="${clients}">
                        <option class="clientId">[ID:${client.id}] ${client.fname} ${client.lname}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label>Contact Person's ID</label>
                <input type="number" name="client.id" class="form-control" required="required"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Date</label>
                <input type="text" placeholder="MM/DD/YYYY" name="eventDate" class="form-control" required="required"/>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-md-12">
                <label>Description</label>
                <textarea name="description" class="form-control" required="required" style="height:200px"></textarea>
            </div>
        </div>
    </div>
    <div class="pull-right">
        <button type="submit" class="btn btn-success">Save</button>
        <a href="/dashboard/admin" class="btn btn-danger">Back</a>
    </div>
</form>
<%@include file="../shared/footer.jsp" %>