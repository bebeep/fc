package com.ruoyi.web.tools;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ElementByte {
    private Long imgID;
    private byte[] bytes;
}
