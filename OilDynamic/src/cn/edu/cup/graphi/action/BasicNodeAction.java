package cn.edu.cup.graphi.action;

import java.util.List;

import cn.edu.cup.graphi.business.BasicNode;
import cn.edu.cup.graphi.business.Edge;
import cn.edu.cup.graphi.business.NodeProper;
import cn.edu.cup.graphi.dao.BasicNodeDao;
import cn.edu.cup.graphi.dao.EdgeDao;
import cn.edu.cup.graphi.dao.NodeProperDao;

public class BasicNodeAction {
	String TypeName;
	int Type;
	String FilePath;
	public String addBasicNode(){
		BasicNodeDao dao=new BasicNodeDao();
		int re=dao.addBasicNode(TypeName,Type,FilePath);
		if(re==-1){
			msg="添加基本节点失败";
		}
		dao.close();
		return "SUCCESS";
	}
	List<BasicNode> basicNodes;
	public String listBasicNodes(){
		BasicNodeDao dao=new BasicNodeDao();
		basicNodes=dao.getBasicNodes();
		dao.close();
		return "SUCCESS";
	}
	public String delBasicNodes(){
		BasicNodeDao dao = new BasicNodeDao();
		// AlgorithmInputDao inputDao=new AlgorithmInputDao();
		if (!ids.isEmpty()) {

			for (int id : ids) {

				dao.deleteBasicNode(id);
			}
		}
		// inputDao.close();
		dao.close();
		return "SUCCESS";
	}
	String proper;
	String value;
	public String modifyBasicNode(){
		BasicNodeDao dao = new BasicNodeDao();
		int re=dao.modifyBasicNode(id,proper,value);
		if(re==-1){
			msg="修改属性失败";
		}
		dao.close();
		
		
		
		return "SUCCESS";
	}
	
	String properName;
	String properDefaultValue;
	String properUnit;
	String ParentID;
	String msg;
	public String addBasicNodeProper(){
		NodeProperDao dao=new NodeProperDao();
		int re=dao.addBasicProper(properName,properDefaultValue,properUnit,ParentID);
		if(re==-1){
			msg="添加属性失败";
		}
		dao.close();
		return "SUCCESS";
	}
	List<NodeProper> nodePropers;
	int nodeID;
	public String listBasicNodesProper(){
		NodeProperDao dao=new NodeProperDao();
		nodePropers=dao.getBasicPropersByNodeID(nodeID);
		dao.close();
		return "SUCCESS";
	}
	private List<Integer> ids;
	public String delBasicNodesProper(){
		NodeProperDao dao = new NodeProperDao();
		// AlgorithmInputDao inputDao=new AlgorithmInputDao();
		if (!ids.isEmpty()) {

			for (int id : ids) {

				dao.deleteBasicProper(id);
			}
		}
		// inputDao.close();
		dao.close();
		return "SUCCESS";
	}
	int id;
	public String modifyBasicNodeProper(){
		NodeProperDao dao = new NodeProperDao();
		int re=dao.modifyBasicProper(id,properName,properDefaultValue,properUnit,ParentID);
		if(re==-1){
			msg="修改属性失败";
		}
		dao.close();
		
		
		
		return "SUCCESS";
	}
}
