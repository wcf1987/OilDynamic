package cn.edu.cup.graphi.action;

import java.util.List;

import cn.edu.cup.graphi.business.NodeProper;
import cn.edu.cup.graphi.dao.NodeProperDao;

import com.opensymphony.xwork2.Action;

public class NodeProperAction {
	String properName;
	String properDefaultValue;
	String properUnit;
	String ParentID;
	String msg;
	public String addNodeProper(){

		return Action.SUCCESS;
	}
	int nodeID;
	List<NodeProper> nodePropers;
	private int page;
	private int records;
	private int rows;
	private int rowNum;
	private int total;
	public String listNodePropers(){
		NodeProperDao dao=new NodeProperDao();
		nodePropers=dao.getPropersByNodeID(nodeID,page, rows);
		records = dao.getProperCounts(nodeID);
		total = records / rows;
		if (records % rows != 0) {
			total++;
		}
		dao.close();
		dao.close();
		return Action.SUCCESS;
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
		
		return Action.SUCCESS;
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
		
		
		
		return Action.SUCCESS;
	}
}
