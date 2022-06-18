<%@ page import="com.example.EXAM_WCD_SEM4_2.entity.Employee" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<jsp:include page="/client/component/head.jsp"/>
<body>
<%  Employee employee = (Employee) request.getAttribute("employee");
    if(employee == null) {
        employee = new Employee();
    }
    HashMap<String, String> errors = (HashMap<String, String>) request.getAttribute("errors");
    if (errors == null) {
        errors = new HashMap<>();
    }
%>
<jsp:include page="/client/component/sidebar.jsp"/>
<div class="all-content-wrapper">
    <jsp:include page="/client/component/navbar.jsp"/>
    <div class="row" style="padding-top: 60px">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="sparkline12-list">
                <div class="sparkline12-hd">
                    <div class="main-sparkline12-hd">
                        <h1>Create Form Employee</h1>
                    </div>
                </div>
                <div class="sparkline12-graph">
                    <div class="basic-login-form-ad">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="all-form-element-inner">
                                    <form action="${pageContext.request.contextPath}/create" method="post">
                                        <div class="form-group-inner">
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                    <label class="login2 pull-right pull-right-pro">Full Name</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                                    <input type="text" name="fullName" class="form-control" />
                                                    <%
                                                        if (errors.containsKey("name")) {
                                                    %>
                                                    <p style="color: red;font-size: 13px;">* <%=errors.get("name")%>
                                                    </p>
                                                    <%}%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group-inner">
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                    <label class="login2 pull-right pull-right-pro">Birth Day</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                                    <input type="date" name="birthday" class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group-inner">
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                    <label class="login2 pull-right pull-right-pro">Address</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                                    <input type="text" name="address" class="form-control" />
                                                    <%
                                                        if (errors.containsKey("address")) {
                                                    %>
                                                    <p style="color: red;font-size: 13px;">* <%=errors.get("address")%>
                                                    </p>
                                                    <%}%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group-inner">
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                    <label class="login2 pull-right pull-right-pro">Position</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                                    <input type="text" name="position" class="form-control" />
                                                    <%
                                                        if (errors.containsKey("position")) {
                                                    %>
                                                    <p style="color: red;font-size: 13px;">* <%=errors.get("position")%>
                                                    </p>
                                                    <%}%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group-inner">
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                    <label class="login2 pull-right pull-right-pro">Department</label>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                                    <input type="text" name="department" class="form-control" />
                                                    <%
                                                        if (errors.containsKey("department")) {
                                                    %>
                                                    <p style="color: red;font-size: 13px;">* <%=errors.get("department")%>
                                                    </p>
                                                    <%}%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn-group" role="group" aria-label="Basic example">
                                            <button type="submit" class="btn" style="padding: 10px 20px; margin: 10px; background: blue; color: white" >Submit</button>
                                            <button type="reset" value="Reset" class="btn" style="padding: 10px 20px; margin: 10px; background: DarkTurquoise; color: black;" >Reset</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/client/component/footer.jsp"/>
</div>
<jsp:include page="/client/component/scripts.jsp"/>
</body>
</html>