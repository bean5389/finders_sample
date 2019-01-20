package me.bena5389.finders.Controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@RequestMapping("hello")
	public String hello() {
		return "Hello";
	}
	
	@RequestMapping("world")
	public String world() {
		return "World";
	}
	
}
