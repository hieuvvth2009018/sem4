package com.example.thi_WCD.model;

import com.example.thi_WCD.entity.Employee;

import java.util.List;

public interface EmployeeModel {
    boolean save(Employee obj);
    List<Employee> findAll();
}
