package query;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle;

import pojo.Customer;
import util.HibernateSessionFactory;

public class HqlDelete {

	static Session session=HibernateSessionFactory.getSession();
	static Transaction tran=session.beginTransaction();
	//��ѯCustomerȫ������
	//��ȡ׼�����
	static Criteria crit=session.createCriteria(Customer.class);
	
	public static void main(String[] args) {
		//ɾ��
		//f1();
		//ռλ��
		f2();

	}

	private static void f2() {
		Query query=session.createQuery("delete Customer where account=:a");
		query.setInteger("a", 333);
		int i=query.executeUpdate();
		System.out.println(i+"����Ӱ��");
		tran.commit();
		HibernateSessionFactory.closeSession();
		
	}

	private static void f1() {
		//ɾ��account=333����Ϣ
		Query query=session.createQuery("delete Customer where account=333");
		int i=query.executeUpdate();
		System.out.println(i+"����Ӱ��");
		tran.commit();
		HibernateSessionFactory.closeSession();
		
	}

}
