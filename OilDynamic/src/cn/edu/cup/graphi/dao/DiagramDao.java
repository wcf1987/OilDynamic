package cn.edu.cup.graphi.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import cn.edu.cup.graphi.business.GraphOutput;
import cn.edu.cup.tools.HibernateSessionManager;

public class DiagramDao {
	 Session session ;
	 
		
		public void close() {
			// TODO Auto-generated method stub
			HibernateSessionManager.commitThreadLocalTransaction();
			HibernateSessionManager.closeThreadLocalSession();
		}

		public void roll() {
			// TODO Auto-generated method stub
			HibernateSessionManager.rollbackThreadLocalTransaction();
			HibernateSessionManager.closeThreadLocalSession();
		}

	public DiagramDao()
	{	
		session = HibernateSessionManager.getThreadLocalSession();
	
	}
	public GraphOutput getProGraphi(int pro_id, int graphID) {
		// TODO Auto-generated method stub
		int type=graphiDao.getGraphiTypeByID(graphID);
		GraphOutput temp=new GraphOutput();
		if(type==0){
			//线形图
			temp.setType(type);
			temp.setTypeS(AlgorithmGraphi.getTypeSByNum(type));
			temp.setGraphiName(graphiDao.getGraphiNameByID(graphID));
			temp.setX(this.getProGraphiLineX(pro_id,graphID));
			temp.setY(this.getProGraphiLineY(pro_id,graphID));
			
		}
		if(type==1){
			//饼图
			temp.setType(type);
			temp.setTypeS(AlgorithmGraphi.getTypeSByNum(type));
			temp.setGraphiName(graphiDao.getGraphiNameByID(graphID));
			temp.setPoints(this.getProGraphiPoint(pro_id,graphID));		
			}
		if(type==2){
			//柱状图
			temp.setType(type);
			temp.setTypeS(AlgorithmGraphi.getTypeSByNum(type));
			temp.setGraphiName(graphiDao.getGraphiNameByID(graphID));
			temp.setX(this.getProGraphiLineX(pro_id,graphID));
			temp.setY(this.getProGraphiLineY(pro_id,graphID));
			
			
		}
		return temp;
	}
	
	
	public List<GraphiLine> getProGraphiHistogram(int pro_id, int graphID) {
		// TODO Auto-generated method stub
		AlgorithmGraphiDao graphiDao=new AlgorithmGraphiDao();
		ParameterDao pDao=new ParameterDao();
		GraphiLine line;
		List<Integer> paramids=graphiDao.getGraphiDetailByInfo(graphID,"");
		List<GraphiLine> lines=new ArrayList<GraphiLine>(paramids.size());
		
		for(int i=0;i<paramids.size();i++){
			line=new GraphiLine();
			int pid=paramids.get(i);
			String display=pDao.getDisplayName(pid);
			String messure=pDao.getMessureShow(pid);
			line.setDisplay(display);
			line.setMessure(messure);
			List<Double> value=this.getListOutputValueByParID(pro_id,pid);
			List<Double> ISOvalue=this.getListOutputISOValueByParID(pro_id,pid);
			line.setValue(value);
			line.setISOValue(ISOvalue);
			lines.add(line);
		}
		return lines;
	}
	private List<GraphiPoint> getProGraphiPoint(int pro_id, int graphID) {

		ParameterDao pDao=new ParameterDao();
		GraphiPoint point;
		List<GraphiPoint> points=new ArrayList<GraphiPoint>();
		SQLQuery q3 = session.createSQLQuery("select t1.display ,t.par_value,t.par_ISOValue,t.par_id from t_projectoutputs t,t_parameters t1,t_graphdetail t2 where t.par_id=t1.ID and t2.ParamID=t.Par_ID and t2.graphid=? and t.Pro_ID=? order by t.id  desc ");
		q3.setParameter(0, graphID);
		q3.setParameter(1, pro_id);
		
		List l=q3.list();
		
		for(int i=0;i<l.size();i++){
			point=new GraphiPoint();

			  Object[] row = (Object[])l.get(i);
			
			  
			String display= (String)row[0];
			String messure=pDao.getMessureShow((Integer)(row[3]));
			point.setDisplay(display);
			point.setMessure(messure);
			point.setValue((Double)row[1]);
			point.setISOValue((Double)row[2]);
			points.add(point);
		}
		return points;
	}

	public GraphiLine getProGraphiLineX(int pro_id, int graphID) {
		// TODO Auto-generated method stub
		AlgorithmGraphiDao graphiDao=new AlgorithmGraphiDao();
		ParameterDao pDao=new ParameterDao();
		GraphiLine line=new GraphiLine();
		List<Integer> paramids=graphiDao.getGraphiDetailByInfo(graphID,"X");
		
		
		String display=pDao.getDisplayName(paramids.get(0));
		String messure=pDao.getMessureShow(paramids.get(0));
		line.setDisplay(display);
		line.setMessure(messure);
		List<Double> value=this.getListOutputValueByParID(pro_id,paramids.get(0));
		List<Double> ISOvalue=this.getListOutputISOValueByParID(pro_id,paramids.get(0));
		line.setValue(value);
		line.setISOValue(ISOvalue);
		
		return line;
	}
	public List<GraphiLine> getProGraphiLineY(int pro_id, int graphID) {
		// TODO Auto-generated method stub
		AlgorithmGraphiDao graphiDao=new AlgorithmGraphiDao();
		ParameterDao pDao=new ParameterDao();
		GraphiLine line;
		List<Integer> paramids=graphiDao.getGraphiDetailByInfo(graphID,"Y");
		List<GraphiLine> lines=new ArrayList<GraphiLine>(paramids.size());
		
		for(int i=0;i<paramids.size();i++){
			line=new GraphiLine();
			int pid=paramids.get(i);
			String display=pDao.getDisplayName(pid);
			String messure=pDao.getMessureShow(pid);
			line.setDisplay(display);
			line.setMessure(messure);
			List<Double> value=this.getListOutputValueByParID(pro_id,pid);
			List<Double> ISOvalue=this.getListOutputISOValueByParID(pro_id,pid);
			line.setValue(value);
			line.setISOValue(ISOvalue);
			lines.add(line);
		}
		return lines;
	}

}
