package cn.edu.cup.graphi.business;

import java.util.List;

public class GraphiLine {
	List<Double> value;
	List<String> names;
	String display;
	String messure;
	public List<Double> getValue() {
		return value;
	}
	public void setValue(List<Double> value) {
		this.value = value;
	}
	public List<String> getNames() {
		return names;
	}
	public void setNames(List<String> name) {
		names = name;
	}
	public String getDisplay() {
		return display;
	}
	public void setDisplay(String display) {
		this.display = display;
	}
	public String getMessure() {
		return messure;
	}
	public void setMessure(String messure) {
		this.messure = messure;
	}
}
