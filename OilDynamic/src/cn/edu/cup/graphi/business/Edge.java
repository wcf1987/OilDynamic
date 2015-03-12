package cn.edu.cup.graphi.business;

public class Edge {
	Integer id ;
	Integer sourceid;
	Integer targetid;
	Integer BasicNodeID;
	Integer proID;
	String sourceName;
	String targetName;
	public Edge(Integer id, Integer sourceid, Integer targetid,
			Integer basicNodeID, Integer proID) {
		super();
		this.id = id;
		this.sourceid = sourceid;
		this.targetid = targetid;
		BasicNodeID = basicNodeID;
		this.proID = proID;
	}
	public Edge(Integer id2, Integer sourceID2, Integer targetID2,
			Integer basicNodeID2, int proID2, String sourceName,
			String targetName) {
		super();
		this.id = id2;
		this.sourceid = sourceID2;
		this.targetid = targetID2;
		BasicNodeID = basicNodeID2;
		this.proID = proID2;
		this.sourceName=sourceName;
		this.targetName=targetName;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public Integer getBasicNodeID() {
		return BasicNodeID;
	}
	public void setBasicNodeID(Integer basicNodeID) {
		BasicNodeID = basicNodeID;
	}
	public Integer getProID() {
		return proID;
	}
	public void setProID(Integer proID) {
		this.proID = proID;
	}
}
