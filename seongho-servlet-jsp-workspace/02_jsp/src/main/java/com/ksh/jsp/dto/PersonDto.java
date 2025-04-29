package com.ksh.jsp.dto;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
@ToString
public class PersonDto {
    private int age;
    private String name;
    private String gender;
}
