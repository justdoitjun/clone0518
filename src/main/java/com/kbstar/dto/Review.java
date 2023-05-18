package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@Getter
@AllArgsConstructor
@ToString
@Setter
@NoArgsConstructor
public class Review {
    private int id;
    private String name;
    private Date rdate;
    private String text;

    public Review(String name, String text) {
        this.name = name;
        this.text = text;
    }
}
