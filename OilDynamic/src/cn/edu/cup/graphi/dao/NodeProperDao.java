package cn.edu.cup.graphi.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

import cn.edu.cup.graphi.business.Graphi;
import cn.edu.cup.graphi.business.Line;
import cn.edu.cup.graphi.business.NodeProper;
import cn.edu.cup.graphi.business.Point;
import cn.edu.cup.tools.HibernateSessionManager;

public class NodeProperDao {
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

	public NodeProperDao()
	{	
		session = HibernateSessionManager.getThreadLocalSession();
	
	}

	public List<NodeProper> getBasicPropersByNodeID(int basicNodeID, int page, int rows) {
		List<NodeProper> tempList=new ArrayList<NodeProper>();
		SQLQuery q;
		
		 q = session
				.createSQLQuery("select t2.id,t2.ProperName,t2.ProperDefaultValue,t2.ProperUnit from t_proper t2 where t2.parentID=?");
		q.setParameter(0, basicNodeID);		

		q.setFirstResult((page - 1) * rows);
		q.setMaxResults(rows);
		List l = q.list();
		
		for (int i = 0; i < l.size(); i++) {
			// TestDb user = (TestDb)l.get(i);
			// System.out.println(user.getUsername());

			Object[] row = (Object[]) l.get(i);
			
			Integer id = ((Integer) row[0]);
			String ProperName = (String) row[1];
			String propervalue = (String) row[2];
			String ProperUnit = (String) row[3];
			NodeProper temp=new NodeProper(id,  ProperName, propervalue, ProperUnit);
			tempList.add(temp);

		}
		
		return tempList;
	}
	public List<NodeProper> getPropersByNodeID(int nodeID, int page, int rows) {
		List<NodeProper> tempList=new ArrayList<NodeProper>();
		SQLQuery q;
		
		 q = session
				.createSQLQuery("select t1.id,t1.properID,t1.propervalue,t2.ProperName,t2.ProperUnit from t_nodeproper t1,t_proper t2 where t1.properID=t2.ID and t1.parentID=?");
		q.setParameter(0, nodeID);		

		q.setFirstResult((page - 1) * rows);
		q.setMaxResults(rows);
		List l = q.list();
		
		for (int i = 0; i < l.size(); i++) {
			// TestDb user = (TestDb)l.get(i);
			// System.out.println(user.getUsername());

			Object[] row = (Object[]) l.get(i);
			
			Integer id = ((Integer) row[0]);
			Integer properID = ((Integer) row[1]);
			String propervalue = (String) row[2];
			String ProperName = (String) row[3];
			String ProperUnit = (String) row[4];
			NodeProper temp=new NodeProper(id, properID, propervalue, nodeID, ProperName, ProperUnit);
			tempList.add(temp);

		}
		
		return tempList;
	}
	public int addBasicProper(String properName,
			String properDefaultValue, String properUnit, String parentID) {
		SQLQuery q;
		HibernateSessionManager.getThreadLocalTransaction();
		
		q = session.createSQLQuery("insert into t_proper (properName,properDefaultValue,properUnit,parentID) values (?,?,?,?)");
		q.setParameter(0, properName);
		q.setParameter(1, properDefaultValue);	
		q.setParameter(2, properUnit);	
		q.setParameter(3, parentID);	
		int re=q.executeUpdate();
	
		return re;
	}

	public int deleteBasicProper(int id) {
		HibernateSessionManager.getThreadLocalTransaction();
		SQLQuery q = session
				.createSQLQuery("delete from t_proper where ID=?");
		q.setParameter(0, id);
		int re = q.executeUpdate();
		// tx.commit();
		return re;
		
	}

	public int modifyBasicProper(int id, String properName,String properDefaultValue, String properUnit, String parentID) {
			SQLQuery q;
	HibernateSessionManager.getThreadLocalTransaction();
	
	q = session.createSQLQuery("update t_proper set properName=?,properDefaultValue=?,properUnit=? where id=?");
	q.setParameter(0, properName);
	q.setParameter(1, properDefaultValue);	
	q.setParameter(2, properUnit);	
	
	q.setParameter(3, id);	
	int re=q.executeUpdate();
		return re;
	}

	public int modifyNodeProper(int id, String properValue) {
		HibernateSessionManager.getThreadLocalTransaction();
		SQLQuery q;
		q = session.createSQLQuery("update t_nodeproper set properValue=? where id=?");
		q.setParameter(0, properValue);
		q.setParameter(1, id);	
		
		int re=q.executeUpdate();
			return re;
	
	}

	public int getBasicCounts(int nodeID) {
		String sql = "select count(*) from t_proper t2 where parentID=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, nodeID);
		Integer count = ((BigInteger) q.uniqueResult()).intValue();
		return count;
	}

	public int getProperCounts(int nodeID) {
		String sql = "select count(*) from t_nodeproper t2 where parentID=?";
		SQLQuery q = session.createSQLQuery(sql);
		q.setParameter(0, nodeID);
		Integer count = ((BigInteger) q.uniqueResult()).intValue();
		return count;
	}
}
