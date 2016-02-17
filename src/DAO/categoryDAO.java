package DAO;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CategoryVO;
import VO.CountryVO;



import java.sql.*;
import java.util.ArrayList;
import java.util.List;

	public class categoryDAO {
		 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		  
		  Session session =sessionFactory.openSession();
		public void insert(CategoryVO v){
			try
			{
				  
				  Transaction tr = session.beginTransaction();
				  
				  session.save(v);
				  
				  tr.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
		}
		
		public List search(CategoryVO v){
			
			List l=new ArrayList();     
			try
			{	  
				  
			   
				  Query q=session.createQuery("from CategoryVO");
				  
				  l=q.list();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return l;
		}
		
public List edit(CategoryVO v){
			
			List l=new ArrayList(); 
			
			try
			{	  
				 
				  Query q=session.createQuery("from CategoryVO where cat_id='"+v.getCat_Id()+"' ");
				  
				  l=q.list();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return l;
			
	}

public void update(CategoryVO v){
	
	 
	
	try
	{	  
		  
	   
		  Transaction tr = session.beginTransaction();
		  
		  session.saveOrUpdate(v);				  
		  tr.commit();
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
	
	

}
}