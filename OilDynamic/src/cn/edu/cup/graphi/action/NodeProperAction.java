package cn.edu.cup.graphi.action;

import java.util.List;

import cn.edu.cup.graphi.business.NodeProper;
import cn.edu.cup.graphi.dao.NodeProperDao;

public class NodeProperAction {
	public String addNodeProper(){
		return "SUCCESS";
	}
	int nodeID;
	List<NodeProper> nodePropers;
	public String listNodePropers(){
		NodeProperDao dao=new NodeProperDao();
		nodePropers=dao.getPropersByNodeID(nodeID);
		return "SUCCESS";
	}
	public int getNodeID() {
		return nodeID;
	}
	public void setNodeID(int nodeID) {
		this.nodeID = nodeID;
	}
	public List<NodeProper> getNodePropers() {
		return nodePropers;
	}
	public void setNodePropers(List<NodeProper> nodePropers) {
		this.nodePropers = nodePropers;
	}
	public String delNodePropers(){
		return "SUCCESS";
	}
	public String modifyNodePropers(){
		return "SUCCESS";
	}
}
