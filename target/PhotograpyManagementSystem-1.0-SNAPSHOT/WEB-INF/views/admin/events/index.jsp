<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>
<h1>Events</h1>
<div class="col-md-6 thumbnail">
    <img src="assets/images/event.jpg" alt="Events Dashboard">
    <div class="caption">
        <hr class="divider">
        <center>
            Organizer's Name:<b>Name</b>   
        </center></div>
</div>
<div class="col-md-6">
    <table class="table table-striped">
        <tr><th>Title:</th><td></td></tr>
        <tr><th>Date:</th> <td></td></tr>
        <tr><th>Venue:</th> <td></td></tr>
        <tr><th>Phone:</th> <td></td></tr>
        <tr><th>Description:</th><td></td></tr>
    </table>
    <div class=" pull-right">
        <a href="delete-event.jsp">
            <button class="btn btn-danger "><span class="glyphicon glyphicon-remove-sign"></span>Delete</button></a>
        <a href="edit-event.jsp?title=">
            <button class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span>Edit</button></a>
    </div>
</div>
<hr class="divider">

<%@include file="../shared/footer.jsp" %>