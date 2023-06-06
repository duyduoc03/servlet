package com.example.examp.entity;

import javax.persistence.*;
import java.awt.*;
import java.sql.Date;

@Entity
@Table(name = "employees")
public class EmployeeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ID;
    private String FullName;
    private Date Birthday;
    private TextArea Address;
    private String Position;
    private String Department;

    public EmployeeEntity(){

    }

    public EmployeeEntity(String fullName, Date birthday, TextArea address, String position, String department) {
        FullName = fullName;
        Birthday = birthday;
        Address = address;
        Position = position;
        Department = department;
    }

    public EmployeeEntity(Integer ID, String fullName, Date birthday, TextArea address, String position, String department) {
        this.ID = ID;
        FullName = fullName;
        Birthday = birthday;
        Address = address;
        Position = position;
        Department = department;
    }

    public Integer getID() {
        return ID;
    }

    public void setID(Integer ID) {
        this.ID = ID;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String fullName) {
        FullName = fullName;
    }

    public Date getBirthday() {
        return Birthday;
    }

    public void setBirthday(Date birthday) {
        Birthday = birthday;
    }

    public TextArea getAddress() {
        return Address;
    }

    public void setAddress(TextArea address) {
        Address = address;
    }

    public String getPosition() {
        return Position;
    }

    public void setPosition(String position) {
        Position = position;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String department) {
        Department = department;
    }
}
