package cn.edu.cup.graphi.action;

import com.opensymphony.xwork2.Action;

import cn.edu.cup.graphi.business.GraphOutput;
import cn.edu.cup.graphi.dao.DiagramDao;


public class DiagramAction {
	GraphOutput Graphi;
	int id;
	String msg;
	public GraphOutput getGraphi() {
		return Graphi;
	}
	public void setGraphi(GraphOutput graphi) {
		Graphi = graphi;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String ProGraphiByGraphID(){
		DiagramDao dao=new DiagramDao();
		if(id==0){
			msg="id为空，未找到对应的线形图";
			dao.close();
			return  Action.SUCCESS;
		}
		msg="OK";
		Graphi=dao.getGraphiPro(this.id);
		dao.close();
		return  Action.SUCCESS;
	}
}
