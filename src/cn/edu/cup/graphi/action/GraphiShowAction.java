package cn.edu.cup.graphi.action;
import java.util.List;


import cn.edu.cup.graphi.business.BasicNode;
import cn.edu.cup.graphi.business.Graphi;
import cn.edu.cup.graphi.business.NodeProper;
import cn.edu.cup.graphi.dao.BasicNodeDao;
import cn.edu.cup.graphi.dao.GraphiProjectsDao;
import cn.edu.cup.graphi.dao.NodeProperDao;
import cn.edu.cup.tools.GraphiTools;

import com.opensymphony.xwork2.Action;

public class GraphiShowAction {
	private Graphi graphi;
	private List<BasicNode> icons;

	int proID;
	String msg;
	String JSONData="";
	String proName="";
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public void setJSONData(String jSONData) {
		JSONData = jSONData;
	}
	public String viewGUI(){
		if(this.proID==0){
			msg="你需要打开或新建一个工程";
			return "SUCCESS";
		}
		GraphiProjectsDao dao=new GraphiProjectsDao();
		JSONData=dao.getBlankData();
		proName=dao.getProName(proID);
		
		graphi=dao.getGraphiByProID(proID);
		try {
			GraphiTools.updateGraphi(graphi);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			graphi=null;
			e.printStackTrace();
		}
		dao.close();
		return Action.SUCCESS;
	}


	public Graphi getGraphi() {
		return graphi;
	}
	public String getJSONData() {
		return JSONData;
	}
	public String viewMap(){
	
		if(this.proID==0){
			msg="你需要打开或新建一个工程";
			return Action.SUCCESS;
		}
		GraphiProjectsDao dao=new GraphiProjectsDao();
		graphi=dao.getGraphiByProID(proID);
		dao.close();
		return Action.SUCCESS;
	}
	public String getMapICON(){
		
		BasicNodeDao dao=new BasicNodeDao();
		icons=dao.getBasicNodes(0,100);
		dao.close();
		return Action.SUCCESS;
	}
	int nodeid;
	List<NodeProper> deviceKV;
	public String listDevice(){
		NodeProperDao dao=new NodeProperDao();
		deviceKV=dao.getPropersByNodeID(nodeid,0,10000);
		dao.close();
	
		return Action.SUCCESS;
	}
	public List<NodeProper> getDeviceKV() {
		return deviceKV;
	}
	public void setDeviceKV(List<NodeProper> deviceKV) {
		this.deviceKV = deviceKV;
	}
	public int getNodeid() {
		return nodeid;
	}
	public void setNodeid(int nodeid) {
		this.nodeid = nodeid;
	}
	public String getMsg() {
		return msg;
	}
	public List<BasicNode> getIcons() {
		return icons;
	}
	public void setIcons(List<BasicNode> icons) {
		this.icons = icons;
	}
	public int getProID() {
		return proID;
	}
	public void setGraphi(Graphi graphi) {
		this.graphi = graphi;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public void setProID(int proID) {
		this.proID = proID;
	}
	public static void main(String args[]){
		new GraphiShowAction().viewMap();
	}
}
