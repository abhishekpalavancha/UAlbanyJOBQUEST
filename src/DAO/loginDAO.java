package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;







import VO.LoginVO;
import VO.RegistrationVO;

public class loginDAO {
	  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	  
	  Session session =sessionFactory.openSession();
   
	public void insert(LoginVO v){
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
	
	
	public List authentication(LoginVO v){
		
		List l=new ArrayList();
		
		try
		{
			 
		   
			  Query q=session.createQuery("from LoginVO where email='"+v.getEmail()+"' and password='"+v.getPassword()+"' ");
			  
			 
			  
			  l=q.list();
			  
			  
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List forgetPassword(LoginVO loginvo)
	{
			List list=new ArrayList();	
				
				try
				{
					
					Query q=session.createQuery("from LoginVO where email='"+loginvo.getEmail()+"' ");
					
					list= q.list();
					
					System.out.println(list.size());
					
				}
				catch(Exception ex)
				{
					ex.printStackTrace();
				}
				return list;
			}

	 public List showAll(){
			
			Session session = null;
			List temp = null;
			  try{
			  
				
				  Query q = session.createQuery("FROM LoginVO ");
			 
				  temp = q.list();
			  	
			  }catch(Exception e){
				  				  e.printStackTrace();
			  					 }finally{
			  						     session.close();
			  					 		 }
			 return temp;
			
			}	
		

	
}
