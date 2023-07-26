package com.example.wordreversalbackend;

import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "http://localhost:8080")
public class WordController {

    @PostMapping("/reverse")
    public String reverseWord(@RequestBody String word) {
        return new StringBuilder(word).reverse().toString();
    }
}