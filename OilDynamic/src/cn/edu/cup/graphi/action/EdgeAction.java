package cn.edu.cup.graphi.action;

import java.util.List;

import cn.edu.cup.graphi.business.Edge;
import cn.edu.cup.graphi.dao.EdgeDao;

import com.opensymphony.xwork2.Action;

public class EdgeAction {
	String edgeName;
	String basicNodeID;
	int proID;
	int sourceID;
	int targetID;
	String msg;
	int re;
	public int getRe() {
		return re;
	}
	public void setRe(int re) {
		this.re = re;
	}
	public String addEdge(){
		EdgeDao dao=new EdgeDao();
		int re=dao.addEdge(edgeName,basicNodeID,proID,sourceID,targetID);
		if(re==-1){
			msg="添加属性失败";
		}
		dao.close();
		return Action.SUCCESS;
	}
	public String addEdgeByGUI(){
		EdgeDao dao=new EdgeDao();
		re=dao.addEdge(edgeName,"0",proID,0,0);
		if(re==-1){
			msg="添加连接边失败";
		}
		dao.close();
		return Action.SUCCESS;
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
		return Action.SUCCESS;
	}
	public String getEdgeName() {
		return edgeName;
	}
	public void setEdgeName(String edgeName) {
		this.edgeName = edgeName;
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
	public int getSourceID() {
		return sourceID;
	}
	public void setSourceID(int sourceID) {
		this.sourceID = sourceID;
	}
	public int getTargetID() {
		return targetID;
	}
	public void setTargetID(int targetID) {
		this.targetID = targetID;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public List<Edge> getEdges() {
		return edges;
	}
	public void setEdges(List<Edge> edges) {
		this.edges = edges;
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
	public List<Integer> getIds() {
		return ids;
	}
	public void setIds(List<Integer> ids) {
		this.ids = ids;
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
		return Action.SUCCESS;
	}
	public String delEdge(){
		EdgeDao dao = new EdgeDao();
		// AlgorithmInputDao inputDao=new AlgorithmInputDao();
		
				dao.deleteEdge(id);
			
		// inputDao.close();
		dao.close();
		return Action.SUCCESS;
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
		
		
		
		return Action.SUCCESS;
	}
	public String updateEdge(){
		EdgeDao dao = new EdgeDao();
		int re=dao.updateEdge(id,sourceID,targetID);
		if(re==-1){
			msg="修改失败";
		}
		dao.close();
		
		
		
		return Action.SUCCESS;
	}
}
