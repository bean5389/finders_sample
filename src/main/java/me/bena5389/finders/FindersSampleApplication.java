package me.bena5389.finders;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class FindersSampleApplication extends ServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(FindersSampleApplication.class, args);
	}

}

