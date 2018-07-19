<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>
<h1>Requests</h1>
<c:forEach var="request" items="${requests}">
    <div class="col-lg-12">
        <div class="col-lg-10">
            <h3>${request.eventTitle.title}</h3>
            <h5>Date:${request.eventDate}  || Name: ${request.fname} ${request.lname} || DOB: ${request.dateOfBirth} ||
                Description: ${request.description}</h5>
        </div>
        <div class="col-lg-2">
            <a href="/admin/requests/accept/${request.id}" class="btn btn-sm btn-primary">
                <span class="glyphicon glyphicon-check"></span>
            </a>
            <a href="/admin/requests/decline/${request.id}" class="btn btn-sm btn-danger" onclick="alert('Are you sure?')"> 
                <span class="glyphicon glyphicon-trash"></span>
            </a>
        </div>
    </div>
    <hr>
</c:forEach>
<%@include file="../shared/footer.jsp" %>