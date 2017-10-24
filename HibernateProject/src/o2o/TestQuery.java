package o2o;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojo.School;
import util.HibernateSessionFactory;

public class TestQuery {

	public static void main(String[] args) {
		Session session=HibernateSessionFactory.getSession();
		Transaction tran=session.beginTransaction();
		System.out.println("��ѯSchool��Ϣ�õ�Header��Ϣ");
		//OID��ѯ
		School s=(School) session.get(School.class, 101);
		System.out.println("ѧУ���"+s.getId()+" ѧУ������"+s.getSname()+" У���ı��"+s.getHeader().getId()+" У��������"+s.getHeader().getHname());
		
		
		tran.commit();
		HibernateSessionFactory.closeSession();

	}

}
