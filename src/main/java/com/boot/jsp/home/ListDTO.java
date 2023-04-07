package com.boot.jsp.home;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ListDTO {

    private String postId;
    private String postTitle;
    private String postWriter;

}
