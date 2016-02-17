package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import VO.CountryVO;


public class countryDAO {
	 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	  
	  Session session =sessionFactory.openSession();
	public void insert(CountryVO v){
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
	
public List search(CountryVO v){
		
		List l=new ArrayList();     
		try
		{	  
			
		   
			  Query q=session.createQuery("from CountryVO");
			  
			  l=q.list();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
public List edit(CountryVO v){
	
	List l=new ArrayList();     
	try
	{	  
		 
		  Query q=session.createQuery("from CountryVO where country_Id='"+v.getCountry_Id()+"' ");
		  
		  l=q.list();
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
	return l;
}

public void update(CountryVO v){
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

public List searchcountry(CountryVO v){
	List l=new ArrayList();
	try
	{
		
	   
		  Query q=session.createQuery("from StateVO where country_Id='"+v.getCountry_Id()+"'");
		  
		  l=q.list();
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
	return l;
}
}