package cn.edu.cup.graphi.business;

public class Edge {
	Integer id ;
	Integer sourceid;
	Integer targetid;
	Integer BasicNodeID;
	Integer proID;
	String edgeName;
	public String getEdgeName() {
		return edgeName;
	}
	public void setEdgeName(String edgeName) {
		this.edgeName = edgeName;
	}
	public String getSourceName() {
		return sourceName;
	}
	public void setSourceName(String sourceName) {
		this.sourceName = sourceName;
	}
	public String getTargetName() {
		return targetName;
	}
	public void setTargetName(String targetName) {
		this.targetName = targetName;
	}
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
