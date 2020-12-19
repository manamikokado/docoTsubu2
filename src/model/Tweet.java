package model;

import java.io.Serializable;

public class Tweet implements Serializable {
	private String name;
	private String text;

	public Tweet () {}
	public Tweet (String name, String text) {
		this.name = name;
		this.text = text;
	}
	public String getName () { return name; }
	public String getText () { return text; }
}
