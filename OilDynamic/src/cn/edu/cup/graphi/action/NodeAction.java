package cn.edu.cup.graphi.action;

import java.util.List;

import cn.edu.cup.graphi.business.Node;
import cn.edu.cup.graphi.dao.NodeDao;

import com.opensymphony.xwork2.Action;

public class NodeAction {
	String nodeNameStr;
	String basicNodeID;
	int proID;
	String msg;
	int re;
	public String addNode(){
		NodeDao dao=new NodeDao();
		int re=dao.addNode(nodeNameStr,basicNodeID,proID,latitude,longitude,x_location,y_location,x_location_geo,y_location_geo);
		if(re==-1){
			msg="添加属性失败";
		}
		dao.close();
		return Action.SUCCESS;
	}
	
	public String addNodeByGUI(){
		NodeDao dao=new NodeDao();
		re=dao.addNode(nodeNameStr,basicNodeID,proID,0,0,0,0,0,0);
		if(re==-1){
			msg="添加元件失败";
		}
		
		dao.close();
		return Action.SUCCESS;
	}
	
	public int getRe() {
		return re;
	}

	public void setRe(int re) {
		this.re = re;
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
		return Action.SUCCESS;
	}
	public String listAllNodes(){
		NodeDao dao=new NodeDao();
		nodes=dao.getNodesByProID(proID);

		
		dao.close();
		return Action.SUCCESS;
	}
	public String getNodeNameStr() {
		return nodeNameStr;
	}

	public void setNodeNameStr(String nodeNameStr) {
		this.nodeNameStr = nodeNameStr;
	}

	public String getBasicNodeID() {
		return basicNodeID;
	}
	public void setBasicNodeID(String basicNodeID) {
		this.basicNodeID = basicNodeID;
	}
	public int getProID() {
		return proID;
	}
	public void setProID(int proID) {
		this.proID = proID;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRecords() {
		return records;
	}
	public void setRecords(int records) {
		this.records = records;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getRowNum() {
		return rowNum;
	}
	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<Node> getNodes() {
		return nodes;
	}
	public void setNodes(List<Node> nodes) {
		this.nodes = nodes;
	}
	public List<Integer> getIds() {
		return ids;
	}
	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}
	public double getX_location() {
		return x_location;
	}
	public void setX_location(double x_location) {
		this.x_location = x_location;
	}
	public double getY_location() {
		return y_location;
	}
	public void setY_location(double y_location) {
		this.y_location = y_location;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getX_location_geo() {
		return x_location_geo;
	}
	public void setX_location_geo(double x_location_geo) {
		this.x_location_geo = x_location_geo;
	}
	public double getY_location_geo() {
		return y_location_geo;
	}
	public void setY_location_geo(double y_location_geo) {
		this.y_location_geo = y_location_geo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProper() {
		return proper;
	}
	public void setProper(String proper) {
		this.proper = proper;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
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
		return Action.SUCCESS;
	}
	public String delNode(){
		NodeDao dao = new NodeDao();
		// AlgorithmInputDao inputDao=new AlgorithmInputDao();
		
		dao.deleteNode(id);
		
		// inputDao.close();
		dao.close();
		return Action.SUCCESS;
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
		
		
		
		return Action.SUCCESS;
	}
}
