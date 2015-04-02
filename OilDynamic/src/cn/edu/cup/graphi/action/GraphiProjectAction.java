package cn.edu.cup.graphi.action;

import java.util.List;

import cn.edu.cup.graphi.business.GraphiProjects;
import cn.edu.cup.graphi.dao.GraphiProjectsDao;

import com.opensymphony.xwork2.Action;

public class GraphiProjectAction {
	String proName;
	int authorID;
	String msg;
	public String addGraphiProject(){
		GraphiProjectsDao dao=new GraphiProjectsDao();
		int re=dao.addGraphiProject(proName,authorID);
		if(re==-1){
			msg="添加项目失败";
		}
		dao.close();
		return Action.SUCCESS;
	}

	private int page;
	private int records;
	private int rows;
	private int rowNum;
	private int total;
	List<GraphiProjects> projects;
	public String listGraphiProjects(){
		GraphiProjectsDao dao=new GraphiProjectsDao();
		projects=dao.getProjects(page, rows);
		
		records = dao.getCounts();
		total = records / rows;
		if (records % rows != 0) {
			total++;
		}
		dao.close();
		return Action.SUCCESS;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public int getAuthorID() {
		return authorID;
	}
	public void setAuthorID(int authorID) {
		this.authorID = authorID;
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
	public List<GraphiProjects> getProjects() {
		return projects;
	}
	public void setProjects(List<GraphiProjects> projects) {
		this.projects = projects;
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
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public int getProID() {
		return proID;
	}
	public void setProID(int proID) {
		this.proID = proID;
	}

	private List<Integer> ids;
	
	public String delGraphiProjects(){
		GraphiProjectsDao dao = new GraphiProjectsDao();
		// AlgorithmInputDao inputDao=new AlgorithmInputDao();
		if (!ids.isEmpty()) {

			for (int id : ids) {

				dao.deleteProject(id);
			}
		}
		// inputDao.close();
		dao.close();
		return Action.SUCCESS;
	}
	int id;
	String value;
	public String modifyGraphiProjects(){
		GraphiProjectsDao dao = new GraphiProjectsDao();
		int re=dao.modifyProject(id,proName,value);
		if(re==-1){
			msg="修改工程名字失败";
		}
		dao.close();
		
		
		
		return Action.SUCCESS;
	}
	int proID;
	public String getGraphiByProID(){
		return Action.SUCCESS;	
	}
}
