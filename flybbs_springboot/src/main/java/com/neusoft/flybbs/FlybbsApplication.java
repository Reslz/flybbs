package com.neusoft.flybbs;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.neusoft.flybbs.dao")
public class FlybbsApplication {

	public static void main(String[] args) {
		SpringApplication.run(FlybbsApplication.class, args);
	}

}
