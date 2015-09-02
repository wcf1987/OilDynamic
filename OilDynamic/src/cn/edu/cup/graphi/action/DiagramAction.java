package cn.edu.cup.graphi.action;

import cn.edu.cup.graphi.business.GraphOutput;
import cn.edu.cup.graphi.dao.DiagramDao;


public class DiagramAction {
	GraphOutput Graphi;
	public String ProGraphiByGraphID(){
		DiagramDao dao=new DiagramDao();
		Graphi=dao.getProGraphi(this.pro_id,this.graphID);
		return "SUCCESS"; 
	}
}
