package cn.edu.cup.graphi.action;
import cn.edu.cup.graphi.business.Graphi;
import cn.edu.cup.graphi.dao.GraphiProjectsDao;

import com.opensymphony.xwork2.Action;

public class GraphiShowAction {
	private Graphi graphi;
	public Graphi getGraphi() {
		return graphi;
	}
	int proID;
	String msg;
	public String viewExcelMap(){
		this.proID=1;
		if(this.proID==0){
			msg="你需要打开或新建一个工程";
			return Action.SUCCESS;
		}
		GraphiProjectsDao dao=new GraphiProjectsDao();
		graphi=dao.getGraphiByProID(proID);
		
		return Action.SUCCESS;
	}
	public String getMsg() {
		return msg;
	}
	public void setProID(int proID) {
		this.proID = proID;
	}
	public static void main(String args[]){
		new GraphiShowAction().viewExcelMap();
	}
}
