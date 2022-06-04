package org.max.gearwheels;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.*;

@RestController
public class GreetingController {

	private static final String template = "Hello user %s! %s";

	private final AtomicLong counter = new AtomicLong();

	@CrossOrigin(origins = "http://localhost:8080")
	@GetMapping("/greeting")
	public Greeting greeting(@RequestParam(required = false, defaultValue = "World") String name) {
		System.out.println("==== get greeting ==== " + name);
//		return new Greeting(counter.incrementAndGet(), String.format(template, name, name));
		return new Greeting(100, name);
	}

	@GetMapping("/greeting/{id}")
	public Greeting greetingId(@RequestParam(required = false, defaultValue = "World") String name, @PathVariable("id") Long id ) {
		System.out.println("==== get greeting ==== oid" + id);
		Greeting greeting = new Greeting(id);
		System.out.println(greeting);
		return greeting;
	}

	@GetMapping("/greeting-javaconfig")
	public Greeting greetingWithJavaconfig(@RequestParam(required = false, defaultValue = "World") String name) {
		System.out.println("==== in greeting ====");
		return new Greeting(counter.incrementAndGet(), String.format(template, name));
	}

}
