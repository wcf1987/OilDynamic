package cn.edu.cup.graphi.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import cn.edu.cup.graphi.business.Node;
import cn.edu.cup.graphi.business.NodeProper;
import cn.edu.cup.tools.HibernateSessionManager;

public class NodeDao {
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

	public NodeDao()
	{	
		session = HibernateSessionManager.getThreadLocalSession();
	
	}

	public int addNode(String nodeName, String basicNodeID, int proID) {
		SQLQuery q;
		HibernateSessionManager.getThreadLocalTransaction();
		
		q = session.createSQLQuery("insert into t_node (nodeName,basicNodeID,proID) values (?,?,?)");
		q.setParameter(0, nodeName);
		q.setParameter(1, basicNodeID);	
		q.setParameter(2, proID);	
		int re=q.executeUpdate();
	
		return re;
	}

	public List<Node> getNodesByProID(int proID, int page, int rows) {
		List<Node> tempList=new ArrayList<Node>();
		SQLQuery q;
		
		 q = session
				.createSQLQuery("select t1.ID,t1.BasicNodeID,t1.nodeName,t2.TypeName,t1.latitude,t1.longitude,t1.x_location,t1.y_location,t1.x_location_geo,t1.y_location_geo from t_node t1,t_basicnode t2 where t1.BasicNodeID=t2.ID and t1.proID=?");
		q.setParameter(0, proID);		
		q.setFirstResult((page - 1) * rows);
		q.setMaxResults(rows);
		List l = q.list();
		
		for (int i = 0; i < l.size(); i++) {
			// TestDb user = (TestDb)l.get(i);
			// System.out.println(user.getUsername());

			Object[] row = (Object[]) l.get(i);
			
			Integer id = ((Integer) row[0]);
			Integer basicNodeID = ((Integer) row[1]);
			
			String nodeName = (String) row[2];
			String TypeName = (String) row[3];
			
			Double latitude = (Double) row[4];
			Double longitude = (Double) row[5];
			Double x_location = (Double) row[6];
			Double y_location = (Double) row[7];
			Double x_location_geo = (Double) row[8];
			Double y_location_geo = (Double) row[9];
			
			Node temp=new Node(id, nodeName, x_location, y_location, latitude, longitude, x_location_geo, y_location_geo, basicNodeID, proID);
			tempList.add(temp);

		}
		
		return tempList;
	}

	public void deleteNode(int id) {
		HibernateSessionManager.getThreadLocalTransaction();
		SQLQuery q = session
				.createSQLQuery("delete from t_node where ID=?");
		q.setParameter(0, id);
		int re = q.executeUpdate();
		
	}

	public int modifyNode(int id, String proper,String value) {
		SQLQuery q;
	HibernateSessionManager.getThreadLocalTransaction();
	
	q = session.createSQLQuery("update t_node set ?=?  where id=?");
	q.setParameter(0, proper);
	q.setParameter(1, value);	
	q.setParameter(2, id);	
	int re=q.executeUpdate();
		return re;
	}

	public int getCounts(int proID) {
		String sql = "select count(*) from t_node t2 where proID=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, proID);
		Integer count = ((BigInteger) q.uniqueResult()).intValue();
		return count;
	}
}
