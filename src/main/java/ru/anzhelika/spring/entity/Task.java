package ru.anzhelika.spring.entity;

import lombok.Data;

@Data
public class Task {
    private Long id;
    private String title;
    private Boolean done;
    private User user;
}