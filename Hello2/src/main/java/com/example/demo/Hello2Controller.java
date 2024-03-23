package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
public class Hello2Controller {
	@GetMapping("/hello2")
	public String sayHello(@RequestParam("name") String name) {
		return "Hello, World!" + "こんにちは" + name + "さん！";
	}
}
