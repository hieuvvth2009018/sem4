package com.example.thi_WCD.entity;

import java.time.LocalDateTime;
import java.util.HashMap;

public class Employee {
    private int id;
    private String fullName;
    private LocalDateTime birthday;
    private String address;
    private String position;
    private String department;

    public Employee() {
    }

    public Employee(String fullName, LocalDateTime birthday, String address, String position, String department) {
        this.fullName = fullName;
        this.birthday = birthday;
        this.address = address;
        this.position = position;
        this.department = department;
    }

    public Employee(int id, String fullName, LocalDateTime birthday, String address, String position, String department) {
        this.id = id;
        this.fullName = fullName;
        this.birthday = birthday;
        this.address = address;
        this.position = position;
        this.department = department;
    }
    HashMap<String, String> errors = new HashMap<>();
    public boolean isValid() {
        checkValid();
        return errors.size() == 0;
    }
    private void checkValid() {
        if (fullName == null || fullName.length() == 0) {
            errors.put("name", "Please enter fullName");
        }
        if (address == null || address.length() == 0) {
            errors.put("address", "Please enter address");
        }
        if (position == null || position.length() == 0) {
            errors.put("position", "Please enter position");
        }
        if (department == null || department.length() == 0) {
            errors.put("department", "Please enter department");
        }
    }

    public HashMap<String, String> getErrors() {
        return errors;
    }

    public void setErrors(HashMap<String, String> errors) {
        this.errors = errors;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public LocalDateTime getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDateTime birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
