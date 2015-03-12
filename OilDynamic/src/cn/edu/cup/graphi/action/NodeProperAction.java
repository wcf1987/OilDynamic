package cn.edu.cup.graphi.action;

import java.util.List;


import cn.edu.cup.graphi.business.NodeProper;
import cn.edu.cup.graphi.dao.NodeProperDao;

public class NodeProperAction {
	String properName;
	String properDefaultValue;
	String properUnit;
	String ParentID;
	String msg;
	public String addNodeProper(){

		return "SUCCESS";
	}
	int nodeID;
	List<NodeProper> nodePropers;
	public String listNodePropers(){
		NodeProperDao dao=new NodeProperDao();
		nodePropers=dao.getPropersByNodeID(nodeID);
		dao.close();
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
	private List<Integer> ids;
	public String delNodePropers(){
		
		return "SUCCESS";
	}
	int id;
	String properValue;
	public String modifyNodePropers(){
		NodeProperDao dao = new NodeProperDao();
		int re=dao.modifyNodeProper(id,properValue);
		if(re==-1){
			msg="修改属性失败";
		}
		dao.close();
		
		
		
		return "SUCCESS";
	}
}
