package cn.edu.cup.graphi.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import cn.edu.cup.graphi.business.GraphOutput;
import cn.edu.cup.graphi.business.GraphiLine;
import cn.edu.cup.graphi.business.GraphiPoint;
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
	public int getDiagramType(int taskid){
		String sql = "SELECT type from t_diagrampro where id=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, taskid);
		Integer type = ((Integer) q.uniqueResult()).intValue();
		return type;
	}
	public String getDiagramName(int taskid){
		String sql = "SELECT name from t_diagrampro where id=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, taskid);
		String name = ((String) q.uniqueResult());
		return name;
	}
	public String getDiagramXUnit(int taskid){
		String sql = "SELECT xunit from t_diagrampro where id=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, taskid);
		String Unit = ((String) q.uniqueResult());
		return Unit;
	}
	public String getDiagramYUnit(int taskid){
		String sql = "SELECT yunit from t_diagrampro where id=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, taskid);
		String Unit = ((String) q.uniqueResult());
		return Unit;
	}
	public String getDiagramXName(int taskid){
		String sql = "SELECT xName from t_diagrampro where id=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, taskid);
		String Name = ((String) q.uniqueResult());
		return Name;
	}
	public String getDiagramYName(int taskid){
		String sql = "SELECT yName from t_diagrampro where id=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, taskid);
		String Name = ((String) q.uniqueResult());
		return Name;
	}
	public String getMinLineID(int taskid){
		String sql = "SELECT min(lineid) from t_diagramdetail t where  t.taskid=? ";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, taskid);
		String Name = ((String) q.uniqueResult());
		return Name;
	}
	public GraphOutput getGraphiPro(int taskid) {
		// TODO Auto-generated method stub
		int type=getDiagramType(taskid);
		GraphOutput temp=new GraphOutput();
		if(type==1){
			//线形图
			temp.setType(type);
			temp.setTypeS("线形图");
			temp.setGraphiName(getDiagramName(taskid));
			temp.setxName(getDiagramXName(taskid));
			temp.setyName(getDiagramYName(taskid));
			temp.setX(this.getProGraphiLineX(taskid));
			temp.setY(this.getProGraphiLineYs(taskid));
			
		}
		if(type==2){
			//饼图
			temp.setType(type);
			temp.setTypeS("饼图");
			temp.setxName(getDiagramXName(taskid));
			temp.setGraphiName(getDiagramName(taskid));
			temp.setPoints(this.getProGraphiPoint(taskid));		
			}
		if(type==3){
			//柱状图
			temp.setType(type);
			temp.setTypeS("柱状图");
			temp.setxName(getDiagramXName(taskid));
			temp.setyName(getDiagramYName(taskid));
			temp.setGraphiName(getDiagramName(taskid));
			temp.setX(this.getProGraphiLineX(taskid));
			temp.setY(this.getProGraphiLineYs(taskid));
			
			
		}
		return temp;
	}
	

	private List<GraphiPoint> getProGraphiPoint(int taskid) {

		GraphiPoint point;
		List<GraphiPoint> points=new ArrayList<GraphiPoint>();
		
		String messure=getDiagramXUnit(taskid);
		
		
		
		SQLQuery q3 = session.createSQLQuery("select name,x from t_diagramdetail t where  t.taskid=? order by id asc");
		q3.setParameter(0, taskid);
		
		List l = q3.list();
		for(int i=0;i<l.size();i++){
			point=new GraphiPoint();
			String Display=getDiagramXName(taskid);
			
			 Object[] row = (Object[])l.get(i);
			
			  
			String display= (String)row[0];
			point.setDisplay(display);
			point.setMessure(messure);
			point.setValue((Double)row[1]);
			points.add(point);
		}
		return points;
	}

	public GraphiLine getProGraphiLineX(int taskid) {
		// TODO Auto-generated method stub
		
	
		
		
		
		GraphiLine line=new GraphiLine();
		
		line.setDisplay(getDiagramXName(taskid));
		line.setMessure(getDiagramXUnit(taskid));
		SQLQuery q3 = session.createSQLQuery("select name,x from t_diagramdetail t where  t.taskid=? and lineid=? order by id asc");
		q3.setParameter(0, taskid);
		q3.setParameter(1, getMinLineID(taskid));
		List l = q3.list();
		List<Double> value=new ArrayList<Double>();
		List<String> names=new ArrayList<String>();
		for(int i=0;i<l.size();i++)
		{
			    Object[] row = (Object[])l.get(i);
				
			  
			   String n= (String)row[0];
			  
			  
			  Double v=(Double)row[1];
			  value.add(v);
			  names.add(n);
			  
			 
			  
		}
	
		line.setValue(value);
		line.setNames(names);
		return line;
	}
	public GraphiLine getProGraphiLineY(int taskid,String lineid) {
		// TODO Auto-generated method stub
		
	
		
		
		
		GraphiLine line=new GraphiLine();
		
		line.setMessure(getDiagramYUnit(taskid));
		
		SQLQuery q3 = session.createSQLQuery("select name,y,lineid from t_diagramdetail t where  t.taskid=? and lineid=? order by id asc");
		q3.setParameter(0, taskid);
		q3.setParameter(1, lineid);
		List l = q3.list();
		List<Double> value=new ArrayList<Double>();
		List<String> names=new ArrayList<String>();
		for(int i=0;i<l.size();i++)
		{
			    Object[] row = (Object[])l.get(i);
				
			  
			   String n= (String)row[0];
			  
			  
			  Double v=(Double)row[1];
			  value.add(v);
			  names.add(n);

			  line.setDisplay((String)row[2]);
			 
			  
		}
	
		line.setValue(value);
		line.setNames(names);
		return line;
	}
	public List getYLineCount(int taskid){
		String sql = "SELECT distinct lineid from t_diagramdetail where taskid=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, taskid);
		List l = q.list();
		return l;
	}
	public List<GraphiLine> getProGraphiLineYs(int taskid) {
		// TODO Auto-generated method stub
		
		List  l=getYLineCount(taskid);
		List<GraphiLine> lines=new ArrayList<GraphiLine>();
		GraphiLine line;
		
		for(int i=0;i<l.size();i++){
				
			  
			String n= (String)l.get(i);
			line=getProGraphiLineY(taskid,n);			
			lines.add(line);
		}
		return lines;
	}

}
