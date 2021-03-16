package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class KubeController {

	
	@GetMapping("/kubeMessage")
	public String publishMessage() {
	return "Hello kubeworld";
	}
}
