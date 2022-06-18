<%@ page import="com.example.EXAM_WCD_SEM4_2.entity.Employee" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/client/component/head.jsp"/>
<body>
<jsp:include page="/client/component/sidebar.jsp"/>
<div class="all-content-wrapper">
    <jsp:include page="/client/component/navbar.jsp"/>
    <section class="section" style="padding-top: 60px">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Default Table</h5>
                        <table class="table">
                            <tbody>
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">Full Name</th>
                                    <th scope="col">Birthday</th>
                                    <th scope="col">Address</th>
                                    <th scope="col">Position</th>
                                    <th scope="col">Department</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    List<Employee> employees = (ArrayList<Employee>) request.getAttribute("employeelist");
                                    if (employees == null) {
                                        employees = new ArrayList<>();
                                    }
                                    for (Employee employee : employees) {%>
                                <tr>
                                    <td>
                                        <%= employee.getId() %>
                                    </td>
                                    <td><%= employee.getFullName() %>
                                    </td>
                                    <td><%= employee.getBirthday()%>
                                    </td>
                                    <td><%= employee.getAddress() %>
                                    </td>
                                    <td><%= employee.getPosition() %>
                                    </td>
                                    <td><%= employee.getDepartment() %>
                                    </td>
                                </tr>
                                <%}%>
                                </tbody>
                            </table>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="/client/component/footer.jsp"/>
</div>
<jsp:include page="/client/component/scripts.jsp"/>
</body>
</html>