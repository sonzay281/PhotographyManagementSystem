<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>
<h1>Events</h1>
<c:forEach  var="event" items="${events}">
    <div class="col-md-6 thumbnail">
        <img src="${SITE_URL}/assets/images/event.jpg" alt="Events Dashboard">
        <div class="caption">
            <hr class="divider">
            <center>
                Organizer's Name:<b>${event.client.fname} ${event.client.lname}</b>   
            </center></div>
    </div>
    <div class="col-md-6">
        <table class="table table-striped">
            <tr><th>Title:</th><td>${event.eventTitle.title}</td></tr>
            <tr><th>Date:</th> <td>${event.eventDate}</td></tr>
            <tr><th>Address:</th> <td>${event.client.address}</td></tr>
            <tr><th>Phone:</th> <td>${event.client.phone}</td></tr>
            <tr><th>Description:</th><td>${event.description}</td></tr>
        </table>
        <div class=" pull-right">
            <a href="${SITE_URL}/admin/events/update/${event.id}">
                <button class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span>Edit</button></a>
        </div>
    </div>
    <hr class="divider">
</c:forEach>
<%@include file="../shared/footer.jsp" %>