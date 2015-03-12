package cn.edu.cup.graphi.action;

import java.util.List;

import cn.edu.cup.graphi.business.Edge;
import cn.edu.cup.graphi.business.Node;
import cn.edu.cup.graphi.dao.EdgeDao;
import cn.edu.cup.graphi.dao.NodeDao;

public class EdgeAction {
	String edgeName;
	String basicNodeID;
	int proID;
	int sourceID;
	int targetID;
	String msg;
	public String addEdge(){
		EdgeDao dao=new EdgeDao();
		int re=dao.addEdge(edgeName,basicNodeID,proID,sourceID,targetID);
		if(re==-1){
			msg="添加属性失败";
		}
		dao.close();
		return "SUCCESS";
	}
	List<Edge> edges;

	private int page;
	private int records;
	private int rows;
	private int rowNum;
	private int total;
	public String listEdges(){
		EdgeDao dao=new EdgeDao();
		edges=dao.getedgesByProID(proID,page, rows);

		records = dao.getCounts(proID);
		total = records / rows;
		if (records % rows != 0) {
			total++;
		}
		dao.close();
		return "SUCCESS";
	}
	private List<Integer> ids;
	public String delEdges(){
		EdgeDao dao = new EdgeDao();
		// AlgorithmInputDao inputDao=new AlgorithmInputDao();
		if (!ids.isEmpty()) {

			for (int id : ids) {

				dao.deleteEdge(id);
			}
		}
		// inputDao.close();
		dao.close();
		return "SUCCESS";
	}
	int id;
	String proper;
	String value;
	public String modifyEdge(){
		EdgeDao dao = new EdgeDao();
		int re=dao.modifyEdge(id,proper,value);
		if(re==-1){
			msg="修改属性失败";
		}
		dao.close();
		
		
		
		return "SUCCESS";
	}
}
