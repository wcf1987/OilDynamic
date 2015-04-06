package cn.edu.cup.graphi.action;

import java.util.List;

import cn.edu.cup.graphi.business.BasicNode;
import cn.edu.cup.graphi.business.Node;
import cn.edu.cup.graphi.business.NodeProper;
import cn.edu.cup.graphi.dao.BasicNodeDao;
import cn.edu.cup.graphi.dao.NodeProperDao;

import com.opensymphony.xwork2.Action;

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
		return Action.SUCCESS;
	}
	private int page;
	private int records;
	private int rows;
	private int rowNum;
	private int total;
	List<Node> nodes;
	List<BasicNode> basicNodes;
	public String listBasicNodes(){
		BasicNodeDao dao=new BasicNodeDao();
		basicNodes=dao.getBasicNodes(page, rows);
		records = dao.getCounts();
		total = records / rows;
		if (records % rows != 0) {
			total++;
		}
		dao.close();
		return Action.SUCCESS;
	}
	public String listBasicNodeTypes(){
		BasicNodeDao dao=new BasicNodeDao();
		basicNodes=dao.getBasicNodeTypes();
		dao.close();
		return Action.SUCCESS;
	}
	public String getTypeName() {
		return TypeName;
	}
	public void setTypeName(String typeName) {
		TypeName = typeName;
	}
	public int getType() {
		return Type;
	}
	public void setType(int type) {
		Type = type;
	}
	public String getFilePath() {
		return FilePath;
	}
	public void setFilePath(String filePath) {
		FilePath = filePath;
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
	public List<BasicNode> getBasicNodes() {
		return basicNodes;
	}
	public void setBasicNodes(List<BasicNode> basicNodes) {
		this.basicNodes = basicNodes;
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
	public List<NodeProper> getNodePropers() {
		return nodePropers;
	}
	public void setNodePropers(List<NodeProper> nodePropers) {
		this.nodePropers = nodePropers;
	}
	public int getNodeID() {
		return nodeID;
	}
	public void setNodeID(int nodeID) {
		this.nodeID = nodeID;
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
		return Action.SUCCESS;
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
		
		
		
		return Action.SUCCESS;
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
		return Action.SUCCESS;
	}
	List<NodeProper> nodePropers;
	int nodeID;
	public String listBasicNodesProper(){
		NodeProperDao dao=new NodeProperDao();
		nodePropers=dao.getBasicPropersByNodeID(nodeID,page, rows);
		records = dao.getBasicCounts(nodeID);
		total = records / rows;
		if (records % rows != 0) {
			total++;
		}
		dao.close();
		return Action.SUCCESS;
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
		return Action.SUCCESS;
	}
	int id;
	public String modifyBasicNodeProper(){
		NodeProperDao dao = new NodeProperDao();
		int re=dao.modifyBasicProper(id,proper,value);
		//int re=dao.modifyBasicProper(id,properName,properDefaultValue,properUnit,ParentID);
		if(re==-1){
			msg="修改属性失败";
		}
		dao.close();
		
		
		
		return Action.SUCCESS;
	}
}
