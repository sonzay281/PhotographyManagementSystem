<%@include file="shared/header.jsp" %>
<%@include file="shared/dashboardheader.jsp" %>
<div class="col-sm-3">
    <div class="caption">
        <button id="requests" class="btn btn-danger act">${requestsCount}<br>Requests</button>
    </div>
</div>
<div class="col-sm-3">
    <div class="caption">
        <button id="clients" class="btn btn-primary act">${clientsCount}<br>Clients</button>
    </div>
</div>
<div class="col-sm-3">
    <div class="caption">
        <button id="events" class="btn btn-success act">${eventsCount}<br>Events</button>
    </div>
</div>
<div class="col-sm-3">
    <div class="caption">
        <button id="pendings" class="btn btn-info act">10<br>Pending</button>
    </div>
</div>
</div>
<br/>
<hr/>
<div class="raw">
    <div class="col-sm-6 graph">Hello World!</div>
    <div class="col-sm-6 calander">Hello World!</div>
</div>


<%@include file="shared/footer.jsp" %>