package cn.edu.cup.graphi.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import cn.edu.cup.graphi.business.Graphi;
import cn.edu.cup.graphi.business.Line;
import cn.edu.cup.graphi.business.Point;
import cn.edu.cup.tools.HibernateSessionManager;

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
				.createSQLQuery("select t1.ID,t1.nodeName,t2.Type,t2.TypeName,t1.latitude,t1.longitude,t1.x_location,t1.y_location,t1.x_location_geo,t1.y_location_geo from t_node t1,t_basicnode t2 where t1.BasicNodeID=t2.ID and t1.proID=?");
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
			Point tempNode=new Point(id, nodeName, type, typeName, x_location, y_location, x_location_geo, y_location_geo, latitude, longitude);
			points.put(nodeName, tempNode);

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
}
