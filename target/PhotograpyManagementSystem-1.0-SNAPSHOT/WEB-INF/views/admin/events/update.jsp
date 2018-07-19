<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>
<h1>Update events</h1>
<form method="post" action="/admin/events/save">
    <div class="row">
        <div class="form-group">
            <div class="col-md-12">
                <label>Title</label>

                <select class="form-control">
                    <c:forEach var="eventTitle" items="${events}">
                        <option>${eventTitle.title}</option>
                    </c:forEach>
                </select>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-md-12">
                <label>Description</label>
                <textarea name="description" class="form-control" required="required" style="height:200px">${event.description}</textarea>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label>Contact Person</label>
                <select class="form-control">
                    <c:forEach var="client" items="${clients}">
                        <option>${client.fname} ${client.lname}  </option>
                        <c:set var="cid" value="${client.id}"></c:set>
                    </c:forEach>
                </select>    
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Date</label>
                <input type="text" name="date" class="form-control" required="required" value="${event.eventDate}"/>
            </div>
        </div>

    </div>
    <input type="hidden" value="${cid}" name="c_id">
    <input type="hidden" value="${event.id}" name="id">
    <button type="submit" class="btn btn-success">Save</button>
    <a href="/dashboard/admin" class="btn btn-danger">Back</a>

</form>


<%@include file="../shared/footer.jsp" %>