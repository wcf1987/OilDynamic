package cn.edu.cup.graphi.action;

import java.util.List;

import cn.edu.cup.graphi.business.GraphiProjects;
import cn.edu.cup.graphi.dao.GraphiProjectsDao;
import cn.edu.cup.graphi.dao.NodeDao;

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
		return "SUCCESS";
	}
	List<GraphiProjects> projects;
	public String listGraphiProjects(){
		GraphiProjectsDao dao=new GraphiProjectsDao();
		projects=dao.getProjects();
		dao.close();
		return "SUCCESS";
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
		return "SUCCESS";
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
		
		
		
		return "SUCCESS";
	}
	int proID;
	public String getGraphiByProID(){
		return "SUCCESS";	
	}
}
