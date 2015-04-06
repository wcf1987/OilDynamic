package cn.edu.cup.graphi.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import cn.edu.cup.graphi.business.BasicNode;
import cn.edu.cup.graphi.business.Edge;
import cn.edu.cup.tools.HibernateSessionManager;

public class BasicNodeDao {
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

	public BasicNodeDao()
	{	
		session = HibernateSessionManager.getThreadLocalSession();
	
	}

	public int addBasicNode(String typeName, int type, String filePath) {
		SQLQuery q;
		HibernateSessionManager.getThreadLocalTransaction();
		
		q = session.createSQLQuery("insert into t_basicNode (typeName,type,IconFile) values (?,?,?)");
		q.setParameter(0, typeName);
		q.setParameter(1, type);	
		q.setParameter(2, filePath);
		int re=q.executeUpdate();
	
		return re;
	}

	public List<BasicNode> getBasicNodes(int page, int rows) {
		List<BasicNode> tempList=new ArrayList<BasicNode>();
		SQLQuery q;
		
		 q = session
				.createSQLQuery("select t1.ID,t1.type,t1.iconFile,t1.TypeName from t_basicnode t1 order by id desc");
			
			q.setFirstResult((page - 1) * rows);
			q.setMaxResults(rows);
		List l = q.list();
		
		for (int i = 0; i < l.size(); i++) {
			// TestDb user = (TestDb)l.get(i);
			// System.out.println(user.getUsername());

			Object[] row = (Object[]) l.get(i);
			
			Integer id = ((Integer) row[0]);
			Integer type = ((Integer) row[1]);
			
			String iconFile = (String) row[2];
			String typeName = (String) row[3];
			
			BasicNode temp=new BasicNode(id, type, typeName, iconFile);
			tempList.add(temp);

		}
		
		return tempList;
	}
	public List<BasicNode> getBasicNodeTypes() {
		List<BasicNode> tempList=new ArrayList<BasicNode>();
		SQLQuery q;
		
		 q = session
				.createSQLQuery("select t1.ID,t1.TypeName from t_basicnode t1 where t1.id>0 order by id desc");
			
		List l = q.list();
		
		for (int i = 0; i < l.size(); i++) {
			// TestDb user = (TestDb)l.get(i);
			// System.out.println(user.getUsername());

			Object[] row = (Object[]) l.get(i);
			
			Integer id = ((Integer) row[0]);
			
			String typeName = (String) row[1];
			
			BasicNode temp=new BasicNode(id, typeName);
			tempList.add(temp);

		}
		
		return tempList;
	}
	public void deleteBasicNode(int id) {
		HibernateSessionManager.getThreadLocalTransaction();
		SQLQuery q = session
				.createSQLQuery("delete from t_basicnode where ID=?");
		q.setParameter(0, id);
		int re = q.executeUpdate();
	}

	public int modifyBasicNode(int id, String proper, String value) {
		SQLQuery q;
		HibernateSessionManager.getThreadLocalTransaction();
		String s="update t_basicnode set "+proper;
		q = session.createSQLQuery(s+"=?  where id=?");

		q.setParameter(0, value);	
		q.setParameter(1, id);	
		int re=q.executeUpdate();
			return re;
	}

	public int getCounts() {
		String sql = "select count(*) from t_basicnode t2";
		SQLQuery q = session.createSQLQuery(sql);
		Integer count = ((BigInteger) q.uniqueResult()).intValue();
		return count;
	}
}
