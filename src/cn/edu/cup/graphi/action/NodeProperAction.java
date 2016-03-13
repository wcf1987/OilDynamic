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
	public String getProperName() {
		return properName;
	}
	public void setProperName(String properName) {
		this.properName = properName;
	}
	public String getProperDefaultValue() {
		return properDefaultValue;
	}
	public void setProperDefaultValue(String properDefaultValue) {
		this.properDefaultValue = properDefaultValue;
	}
	public String getProperUnit() {
		return properUnit;
	}
	public void setProperUnit(String properUnit) {
		this.properUnit = properUnit;
	}
	public String getParentID() {
		return ParentID;
	}
	public void setParentID(String parentID) {
		ParentID = parentID;
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
	public String getProperValue() {
		return properValue;
	}
	public void setProperValue(String properValue) {
		this.properValue = properValue;
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
