package cn.edu.cup.graphi.action;

import java.util.List;

import cn.edu.cup.graphi.business.Node;
import cn.edu.cup.graphi.dao.NodeDao;

public class NodeAction {
	String nodeName;
	String basicNodeID;
	int proID;
	String msg;
	public String addNode(){
		NodeDao dao=new NodeDao();
		int re=dao.addNode(nodeName,basicNodeID,proID);
		if(re==-1){
			msg="添加属性失败";
		}
		dao.close();
		return "SUCCESS";
	}

	private int page;
	private int records;
	private int rows;
	private int rowNum;
	private int total;
	List<Node> nodes;
	public String listNodes(){
		NodeDao dao=new NodeDao();
		nodes=dao.getNodesByProID(proID,page, rows);

		records = dao.getCounts(proID);
		total = records / rows;
		if (records % rows != 0) {
			total++;
		}
		dao.close();
		return "SUCCESS";
	}
	private List<Integer> ids;
	public String delNodes(){
		NodeDao dao = new NodeDao();
		// AlgorithmInputDao inputDao=new AlgorithmInputDao();
		if (!ids.isEmpty()) {

			for (int id : ids) {

				dao.deleteNode(id);
			}
		}
		// inputDao.close();
		dao.close();
		return "SUCCESS";
	}
	double x_location;
	double y_location;
	double latitude;
	double longitude;
	double x_location_geo;
	double y_location_geo;
	int id;
	String proper;
	String value;
	public String modifyNodes(){
		NodeDao dao = new NodeDao();
		int re=dao.modifyNode(id,proper,value);
		if(re==-1){
			msg="修改属性失败";
		}
		dao.close();
		
		
		
		return "SUCCESS";
	}
}
