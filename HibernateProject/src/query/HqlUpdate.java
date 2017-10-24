package query;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojo.Customer;
import util.HibernateSessionFactory;

public class HqlUpdate {

	static Session session=HibernateSessionFactory.getSession();
	static Transaction tran=session.beginTransaction();
	static Criteria crit=session.createCriteria(Customer.class);
	public static void main(String[] args) {
		//�޸�accountΪ256 ��cname  update ���� set ����='' where ����=''
		f1();
		//����ռλ��
		Query query=session.createQuery("update Customer set cname='����' where account=333");
		int i=query.executeUpdate();
		System.out.println(i);
		
		
		
		
		
//		Query query=session.createQuery("from Customer");
//		List<Customer> list=query.list();
//		for(Customer cus:list){
//			System.out.println(cus.getAccount()+cus.getCname()+cus.getPassword()+cus.getCbalance());
//		}
		
		tran.commit();
		HibernateSessionFactory.closeSession();

	}
	private static void f1(){
		//ռλ����ʽ
		Query query=session.createQuery("update Customer set cname=? where account=?");
		query.setString(0, "����");
		query.setInteger(1, 333);
	}

}
