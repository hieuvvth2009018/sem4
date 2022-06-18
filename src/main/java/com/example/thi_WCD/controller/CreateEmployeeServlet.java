package com.example.thi_WCD.controller;

import com.example.thi_WCD.entity.Employee;
import com.example.thi_WCD.model.EmployeeModel;
import com.example.thi_WCD.model.MysqlEmployeeModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Date;

public class CreateEmployeeServlet extends HttpServlet {
    private EmployeeModel employeeModel;


    @Override
    public void init() throws ServletException {
        employeeModel = new MysqlEmployeeModel();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/client/view/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding("UTF-8");
            resp.setCharacterEncoding("UTF-8");
            resp.setContentType("text/html; charset=UTF-8");
            String fullName = req.getParameter("fullName");
            String birthday = req.getParameter("birthday");
            String address = req.getParameter("address");
            String position = req.getParameter("position");
            String department = req.getParameter("department");
            Employee employee = new Employee();
            employee.setFullName(fullName);
            employee.setBirthday(birthday);
            employee.setAddress(address);
            employee.setPosition(position);
            employee.setDepartment(department);
            if (employee.isValid()) {
                boolean result = employeeModel.save(employee);
                if (result) {
                    resp.sendRedirect("/list");
                } else {
                    try {
                        throw new Exception("Cant save employee");
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                }
            } else {
                req.setAttribute("employee", employee);
                req.setAttribute("errors", employee.getErrors());
                req.getRequestDispatcher("/client/view/create.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
            throw new RuntimeException(e);
        }
    }
}
