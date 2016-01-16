package cn.edu.cup.graphi.dao;

import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

import cn.edu.cup.graphi.business.BasicNode;
import cn.edu.cup.graphi.business.Graphi;
import cn.edu.cup.graphi.business.GraphiProjects;
import cn.edu.cup.graphi.business.Line;
import cn.edu.cup.graphi.business.Point;
import cn.edu.cup.tools.FileExcel;
import cn.edu.cup.tools.HibernateSessionManager;
import cn.edu.cup.tools.SheetContent;

public class GraphiProjectsDao {
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

	public GraphiProjectsDao()
	{	
		session = HibernateSessionManager.getThreadLocalSession();
	
	}
	public Graphi getGraphiByProID(int proID) {
		SQLQuery q;
		Graphi a=new Graphi();
		Map<String,Point> points=new HashMap<String, Point>();
		List<Line> lines=new ArrayList<Line>();
		 q = session
				.createSQLQuery("select t1.ID,t1.nodeName,t2.Type,t2.TypeName,t1.latitude,t1.longitude,t1.x_location,t1.y_location,t1.x_location_geo,t1.y_location_geo,t1.BasicNodeID from t_node t1,t_basicnode t2 where t1.BasicNodeID=t2.ID and t1.proID=?");
		q.setParameter(0, proID);		
		List l = q.list();
		
		for (int i = 0; i < l.size(); i++) {
			// TestDb user = (TestDb)l.get(i);
			// System.out.println(user.getUsername());

			Object[] row = (Object[]) l.get(i);
			
			Integer id = ((Integer) row[0]);
			String nodeName = ((String) row[1]);
			Integer type = (Integer) row[2];
			String typeName = (String) row[3];
			Double latitude = (Double) row[4];
			Double longitude = (Double) row[5];
			Double x_location = (Double) row[6];
			Double y_location = (Double) row[7];
			Double x_location_geo = (Double) row[8];
			Double y_location_geo = (Double) row[9];
			Integer bid = (Integer) row[10];
			Point tempNode=new Point(id, nodeName, type, typeName, x_location, y_location, x_location_geo, y_location_geo, latitude, longitude,bid);
			points.put(String.valueOf(id), tempNode);

		}
		
		 q = session
					.createSQLQuery("select t1.ID,t1.EdgeName,t1.sourceid,t1.targetid from t_edge t1 where  t1.proID=?");
			q.setParameter(0, proID);		
			l = q.list();
			//System.out.println(l.size());
		for (int i = 0; i < l.size(); i++) {
			// TestDb user = (TestDb)l.get(i);
			// System.out.println(user.getUsername());

			Object[] row = (Object[]) l.get(i);
			
			Integer id = ((Integer) row[0]);
			String edgeName = ((String) row[1]);
			Integer sourceid = (Integer) row[2];
			Integer targetid = (Integer) row[3];
			Line tempLine=new Line(id,edgeName,sourceid,targetid);
			lines.add(tempLine);
		}
		a.setPoints(points);
		a.setLines(lines);
		return a;
	}

	public int addGraphiProject(String proName, int authorID) {
		SQLQuery q;
		HibernateSessionManager.getThreadLocalTransaction();
		
		q = session.createSQLQuery("insert into t_graphiproject (proName,authorID,createDate,modifyDate) values (?,?,now(),now())");
		q.setParameter(0, proName);
		q.setParameter(1, authorID);	
		int re=q.executeUpdate();
	
		
		Query q2 = session.createSQLQuery("select LAST_INSERT_ID()");
		int ret_id = ((BigInteger) q2.uniqueResult()).intValue();
		return ret_id;
	}

	public List<GraphiProjects> getProjects(int page, int rows) {
		List<GraphiProjects> tempList=new ArrayList<GraphiProjects>();
		SQLQuery q;
		
		 q = session
				.createSQLQuery("select t1.ID,t1.proName,'test',t1.CreateDate,t1.modifyDate from t_graphiproject t1 order by modifyDate desc");
			q.setFirstResult((page - 1) * rows);
			q.setMaxResults(rows);
		List l = q.list();
		
		for (int i = 0; i < l.size(); i++) {
			// TestDb user = (TestDb)l.get(i);
			// System.out.println(user.getUsername());

			Object[] row = (Object[]) l.get(i);
			
			Integer id = ((Integer) row[0]);
			String proName = ((String) row[1]);
			String  authorName= ((String) row[2]);
			
			Date createDate = (Date) row[3];
			Date modifyDate = (Date) row[4];
			
			
			GraphiProjects temp=new GraphiProjects(id, proName, 0, authorName, createDate, modifyDate);
			tempList.add(temp);

		}
		return tempList;
	}

	public void deleteProject(int id) {
		HibernateSessionManager.getThreadLocalTransaction();
		SQLQuery q = session
				.createSQLQuery("delete from t_graphiproject where ID=?");
		q.setParameter(0, id);
		int re = q.executeUpdate();
		
	}

	public int modifyProject(int id, String proName, String value) {
		SQLQuery q;
		HibernateSessionManager.getThreadLocalTransaction();
		
		q = session.createSQLQuery("update t_graphiproject set proName=?,modifyDate=now()  where id=?");
		q.setParameter(0, proName);
		q.setParameter(1, id);	
		int re=q.executeUpdate();
			return re;
	}

	public int getCounts() {
		String sql = "select count(*) from t_graphiproject t2 ";
		SQLQuery q = session.createSQLQuery(sql);
		Integer count = ((BigInteger) q.uniqueResult()).intValue();
		return count;
	}
	public String getProName(int proid) {
		String sql = "select proName from t_graphiproject t2 where id=?";
		
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, proid);
		String name =q.uniqueResult().toString();
		return name;
	}
	public List<BasicNode> getMapICON() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getBlankData() {
		String sql="select jsonData from t_guijson t where id=178";
		SQLQuery q = session.createSQLQuery(sql);
		
		String json=((String)q.uniqueResult());
		return json;
	}

	public String exportFile(int id) {
		SQLQuery q;
		FileExcel excel=new FileExcel();
		//excel.createExcel();
		 q = session
				.createSQLQuery("select t1.nodeName,t2.TypeName,t1.latitude,t1.longitude,t1.x_location,t1.y_location,t1.x_location_geo,t1.y_location_geo from t_node t1,t_basicnode t2 where t1.BasicNodeID=t2.ID and t1.proID=?");
		q.setParameter(0, id);		
		List l = q.list();
		excel.addNode(l);
		
		 q = session
					.createSQLQuery("select t1.EdgeName,t2.nodeName as 'n1',t3.nodeName as 'n2' from t_edge t1,t_node t2,t_node t3 where  t1.proID=? and t2.ID=t1.sourceid and t3.ID=t1.targetid");
			q.setParameter(0, id);		
			l = q.list();
		excel.addEdge(l);
		
		q = session
				.createSQLQuery("select t4.TypeName,t3.nodeName,t2.ProperName,t1.propervalue,t2.ProperUnit from t_nodeproper t1,t_proper t2,t_node t3,t_basicnode t4 where t1.properID=t2.ID and t1.parentID=t3.ID and t3.BasicNodeID=t4.ID and t1.proID=? order by t4.TypeName,t3.nodeName");
		q.setParameter(0, id);		
		l = q.list();
		excel.addNodeProper(l);
			//System.out.println(l.size());
		excel.saveExcel();
		return excel.getFileNameUrl();
	}

	public int importFile(int id, String impFile) {
		FileExcel excel=new FileExcel();
		int re=0;
		try {
			excel.readExcel(impFile);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
		
		
		SQLQuery q;
		HibernateSessionManager.getThreadLocalTransaction();
		
		q = session.createSQLQuery("delete from t_node where proID=?");
		q.setParameter(0, id);
		re = q.executeUpdate();
		
		q = session.createSQLQuery("delete from t_edge where proID=?");
		q.setParameter(0, id);
		re = q.executeUpdate();
		
		q = session.createSQLQuery("delete from t_nodeproper where proID=?");
		q.setParameter(0, id);
		re = q.executeUpdate();
		
		
		SheetContent rows=excel.getSheetByName("节点");
		for(int i=1;i<rows.sheetContent.size();i++){
			q = session.createSQLQuery("insert into t_node (nodeName,x_location,y_location,latitude,longitude,x_location_geo,y_location_geo,proID,BasicNodeID) values (?,?,?,?,?,?,?,?,?)");
			q.setParameter(0, rows.sheetContent.get(i).get(0));

			q.setParameter(1, rows.sheetContent.get(i).get(2));
			q.setParameter(2, rows.sheetContent.get(i).get(3));
			q.setParameter(3, rows.sheetContent.get(i).get(4));
			q.setParameter(4, rows.sheetContent.get(i).get(5));
			q.setParameter(5, rows.sheetContent.get(i).get(6));
			q.setParameter(6, rows.sheetContent.get(i).get(7));
			
			q.setParameter(7,id);
			q.setParameter(8,getIDByName(rows.sheetContent.get(i).get(1)));
			
			
			re=q.executeUpdate();
		}
		//HibernateSessionManager.commitThreadLocalTransaction();
		//HibernateSessionManager.getThreadLocalTransaction();
		
		rows=excel.getSheetByName("连接");
		for(int i=1;i<rows.sheetContent.size();i++){
			q = session.createSQLQuery("insert into t_edge(EdgeName,sourceid,targetid,BasicNodeID,proID) VALUES(?,?,?,?,?)");
			q.setParameter(0, rows.sheetContent.get(i).get(0));
			
			q.setParameter(1, getNodeIDByName(rows.sheetContent.get(i).get(1),id));
			q.setParameter(2, getNodeIDByName(rows.sheetContent.get(i).get(2),id));
			
			q.setParameter(3,0);
			q.setParameter(4, id);
			
			re=q.executeUpdate();
		}
		
		rows=excel.getSheetByName("节点属性");
		for(int i=1;i<rows.sheetContent.size();i++){
			q = session.createSQLQuery("insert into t_nodeproper (properID,propervalue,parentID,proID) VALUES (?,?,?,?)");
			q.setParameter(0, getProperIDByName(rows.sheetContent.get(i).get(0),rows.sheetContent.get(i).get(2)));
			q.setParameter(1, rows.sheetContent.get(i).get(3));
			
			q.setParameter(2, getNodeIDByName(rows.sheetContent.get(i).get(1),id));
			q.setParameter(3, id);
			
			
			re=q.executeUpdate();
		}
		this.close();
		return re;
	}
	public Integer getIDByName(String typeName) {
		String sql = "select id from t_basicnode t1  where TypeName=? ";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, typeName);
		Integer count = ((Integer) q.uniqueResult()).intValue();
		return count;
	}
	public Integer getNodeIDByName(String nodeName,int proID) {
		String sql = "select max(id) from t_node t1  where nodename=? and proID=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, nodeName);
		q.setParameter(1, proID);
		Integer count = ((Integer) q.uniqueResult()).intValue();
		return count;
	}
	public Integer getProperIDByName(String typeName,String properName) {
		String sql = "select t1.id from t_proper t1,t_basicnode t2  where t1.ParentID=t2.ID and t2.TypeName=? and t1.ProperName=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, typeName);
		q.setParameter(1, properName);
		Integer count = ((Integer) q.uniqueResult()).intValue();
		return count;
	}

}
