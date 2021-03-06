package org.max.gearwheels;

public class Greeting {

	private final long id;
	private final String content;

	public Greeting() {
		this.id = -1;
		this.content = "";
	}

	public Greeting(long id, String content) {
		this.id = id;
		this.content = content;
	}

	public Greeting(long id) {
		this.id = id;
		this.content = "sdfss";
	}

	public long getId() {
		return id;
	}

	public String getContent() {
		return content;
	}

	@Override
	public String toString() {
		return "Greeting{" +
				"id=" + id +
				", content='" + content + '\'' +
				'}';
	}
}
