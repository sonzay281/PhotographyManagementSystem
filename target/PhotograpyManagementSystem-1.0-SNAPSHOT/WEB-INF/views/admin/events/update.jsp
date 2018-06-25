<%@include file="../shared/header.jsp" %>
<%@include file="../shared/dashboardheader.jsp" %>
    <h1>Update Event</h1><form method="post" action="/dashboard/admin/events/save">

    <div class="row">
        <div class="form-group">
            <div class="col-md-12">
                <label>Title</label>
                <input type="text" name="title" class="form-control" required="required"/>
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
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label>Contact Person</label>
                <input type="text" name="name" class="form-control" required="required"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Date</label>
                <input type="date" name="date" class="form-control" required="required"/>
            </div>
        </div>

    </div>
    <button type="submit" class="btn btn-success">Save</button>
    <a href="/dashboard/admin" class="btn btn-danger">Back</a>

</form>


<%@include file="../shared/footer.jsp" %>