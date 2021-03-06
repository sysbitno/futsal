package com.sysbitno.futsal;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
public class HelloController {

    @GetMapping("/api/hello")
    public String hello() {
        return "Hi Gjertsen. Server time: " + LocalDateTime.now();
    }
}
