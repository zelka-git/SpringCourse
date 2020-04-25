package ru.anzhelika.spring.entity;

import lombok.Data;

import java.util.List;

@Data
public class User {
    private Long id;
    private String firstName;
    private String lastName;
    private String login;
    private String password;
    private List<Task> tasks;
}