package cn.edu.cup.graphi.business;

import java.util.Map;

public class Line{
	Integer id ;
	String EdgeName ;
	Integer sourceid;
	Integer targetid ;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEdgeName() {
		return EdgeName;
	}

	public void setEdgeName(String edgeName) {
		EdgeName = edgeName;
	}

	public Integer getSourceid() {
		return sourceid;
	}

	public void setSourceid(Integer sourceid) {
		this.sourceid = sourceid;
	}

	public Integer getTargetid() {
		return targetid;
	}

	public void setTargetid(Integer targetid) {
		this.targetid = targetid;
	}

	public Line(Integer id, String edgeName, Integer sourceid, Integer targetid) {
		super();
		this.id = id;
		EdgeName = edgeName;
		this.sourceid = sourceid;
		this.targetid = targetid;
	}
}