package com.example.thi_WCD.constant;

public class SqlConstant {
    public static final String EMPLOYEE_INSERT = "INSERT INTO employee (fullName, birthday, address, position, department ) VALUES (?, ?, ?, ?, ?);";

    public static final String EMPLOYEE_UPDATE = "UPDATE  employee fullName = ?, birthday = ?, address = ?, position = ?, department = ?,  WHERE id = ?;";
    public static final String EMPLOYEE_DELETE = "DELETE FROM employee WHERE id = ?;";
    public static final String EMPLOYEE_FIND_BY_ID = "SELECT * FROM employee WHERE id = ?;";
    public static final String EMPLOYEE_FIND_ALL = "SELECT * FROM employee ;";
    public static final String EMPLOYEE_FIND_BY_CODE = "SELECT * FROM employee WHERE code = ?;";
}
