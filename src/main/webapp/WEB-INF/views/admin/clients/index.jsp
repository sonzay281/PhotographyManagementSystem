<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>
<h1>Clients</h1>

<table class="table table-striped">
    <tr>
        <th>Name</th>
        <th>Phone</th>
        <th>Address</th> 
        <th>Email</th> 
        <th>Date of Birth</th>
        <th>Action</th>
    </tr>
    <c:forEach var="client" items="${clients}">
        <tr>
            <td>${client.fname} ${client.lname}</td>
            <td>${client.phone}</td>
            <td>${client.address}</td>
            <td>${client.email} <a href="#"><span class="glyphicon glyphicon-envelope"></span></a></td>
            <td>${client.dateOfBirth}</td>
            <td>
                <a href="${SITE_URL}/admin/clients/details/${client.id}" class="btn btn-sm btn-success">
                    <span class="glyphicon glyphicon-list-alt"></span></a> 
                    <a href="${SITE_URL}/admin/clients/update/${client.id}" class="btn btn-sm btn-primary">
                    <span class="glyphicon glyphicon-edit"></span></a>
            </td>
        </tr>
    </c:forEach>
</table>

<%@include file="../shared/footer.jsp" %>