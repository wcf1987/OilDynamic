package cn.edu.cup.graphi.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	public List<NodeProper> getPropersByNodeID(int nodeID) {
		List<NodeProper> tempList=new ArrayList<NodeProper>();
		SQLQuery q;
		
		 q = session
				.createSQLQuery("select t1.id,t1.properID,t1.propervalue,t2.ProperName,t2.ProperUnit from t_nodeproper t1,t_proper t2 where t1.properID=t2.ID and t1.parentID=?");
		q.setParameter(0, nodeID);		
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
}
