package cn.edu.cup.graphi.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import cn.edu.cup.graphi.business.Edge;
import cn.edu.cup.graphi.business.Node;
import cn.edu.cup.tools.HibernateSessionManager;

public class EdgeDao {
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

	public EdgeDao()
	{	
		session = HibernateSessionManager.getThreadLocalSession();
	
	}

	public int addEdge(String edgeName, String basicNodeID, int proID,
			int sourceID, int targetID) {
		SQLQuery q;
		HibernateSessionManager.getThreadLocalTransaction();
		
		q = session.createSQLQuery("insert into t_edge (edgeName,basicNodeID,proID,sourceID,targetID) values (?,?,?,?,?)");
		q.setParameter(0, edgeName);
		q.setParameter(1, basicNodeID);	
		q.setParameter(2, proID);	
		q.setParameter(3, sourceID);
		q.setParameter(4, targetID);
		int re=q.executeUpdate();
	
		return re;
	}

	public List<Edge> getedgesByProID(int proID, int page, int rows) {
		List<Edge> tempList=new ArrayList<Edge>();
		SQLQuery q;
		
		 q = session
				.createSQLQuery("select t1.ID,t1.BasicNodeID,t1.edgeName,t2.TypeName,t1.sourceID,t1.targetID,t3.nodeName,t4.nodeName from t_edge t1,t_basicnode t2,t_node t3,t_node t4 where t1.BasicNodeID=t2.ID and t1.sourceID=t3.id and t1.targetID=t4.id and t1.proID=?");
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
			
			String edgeName = (String) row[2];
			String TypeName = (String) row[3];
			
			Integer sourceID = (Integer) row[4];
			Integer targetID = (Integer) row[5];
			String sourceName = (String) row[6];
			String targetName = (String) row[7];
			Edge temp=new Edge(id, sourceID, targetID, basicNodeID, proID,sourceName,targetName);
			tempList.add(temp);

		}
		
		return tempList;
	}

	public void deleteEdge(int id) {
		HibernateSessionManager.getThreadLocalTransaction();
		SQLQuery q = session
				.createSQLQuery("delete from t_edge where ID=?");
		q.setParameter(0, id);
		int re = q.executeUpdate();
		
		
	}

	public int modifyEdge(int id, String proper, String value) {
		SQLQuery q;
	HibernateSessionManager.getThreadLocalTransaction();
	
	q = session.createSQLQuery("update t_edge set ?=?  where id=?");
	q.setParameter(0, proper);
	q.setParameter(1, value);	
	q.setParameter(2, id);	
	int re=q.executeUpdate();
		return re;
	}

	public int getCounts(int proID) {
		String sql = "select count(*) from t_edge t2 where proID=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, proID);
		Integer count = ((BigInteger) q.uniqueResult()).intValue();
		return count;
	}
}
