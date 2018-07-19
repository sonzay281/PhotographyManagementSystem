<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>
<h1>Events</h1>
<c:forEach var="client" items="${clients}">
    <div class="col-md-6 thumbnail">
        <img src="${SITE_URL}/assets/images/client.jpg" alt="Client Image">
        <div class="caption">
            <hr class="divider">
            <center>
                Clients's Name:<b>${client.fname} ${client.lname}</b>   
            </center></div>
    </div>
    <div class="col-md-6">
        <table class="table table-striped">
            <tr><th>Date of Birth:</th><td>${client.dateOfBirth}</td></tr>
            <tr><th>Phone:</th> <td>${client.phone}</td></tr>
            <tr><th>Address:</th> <td>${client.address}</td></tr>
            <tr><th>Email:</th> <td>${client.email}</td></tr>
            <tr><th>Events:</th> 
                <td>
                    <select>
                        <c:forEach var="event" items="events">
                            <option>${event.eventTitle.title}</option>
                        </c:forEach>
                    </select>
                </td></tr>
            <tr><th>Description:</th><td>${event.description}</td></tr>
        </table>
        <div class=" pull-right">
            <a href="${SITE_URL}/admin/events/add">
                <button class="btn btn-danger "><span class="glyphicon glyphicon-remove-sign"></span>Delete</button></a>
            <a href="${SITE_URL}/admin/events/update/${event.id}">
                <button class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span>Edit</button></a>
        </div>
    </div>
    <hr class="divider">
</c:forEach>
<%@include file="../shared/footer.jsp" %>