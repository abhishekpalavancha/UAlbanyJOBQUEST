package filter;

import java.io.IOException;
import java.net.URI;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import DAO.candidateDAO;
import DAO.loginDAO;
//import DAO.postjobDAO;
//import VO.CandidateVO;
import VO.LoginVO;
//import VO.PostjobVO;

 

/**
 * Servlet Filter implementation class loginController
 */
@WebFilter("/*")
public class loginfilter implements Filter {

    /**
     * Default constructor. 
     */
    public loginfilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		
		HttpSession session =((HttpServletRequest) request).getSession();
		System.out.println("login id after login : "+session.getAttribute("loginID") );
		RequestDispatcher requestDispatcher;
		
		String uri = ((HttpServletRequest)request).getRequestURI();
		
		System.out.println("link =  = = = = " + uri);
		System.out.println("User Id::"+session.getAttribute("loginID"));
		HttpServletResponse rs=(HttpServletResponse) response;
		
		if(uri.contains("login.jsp")||uri.contains("login1.jsp")||uri.contains("main.jsp")||uri.contains("register.jsp")||uri.contains("/css") || uri.contains("/js")|| uri.contains("/img")|| uri.contains("/fonts")|| uri.contains("Registration"))
		{
			System.out.println("inside reg");
			//requestDispatcher = request.getRequestDispatcher("/user/register.jsp");  
			//requestDispatcher.forward(request,response);  
		
			
			
			chain.doFilter(request,response);
			
		}
		else if(uri.contains("dologin"))
		{
			System.out.println("44444444444444444444");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
		
			LoginVO loginvo = new LoginVO();
			loginvo.setEmail(email);
			loginvo.setPassword(password);
			
			loginDAO loginDAO = new loginDAO();
			List list =  loginDAO.authentication(loginvo);
			
			System.out.println("User Name Is::"+email);
			System.out.println("Pass Word Is::"+password);
			System.out.println("List Size::"+list.size());

			if(list != null && list.size()==1)
			{
				
				Iterator itr = list.iterator();
				
				//while(itr.hasNext()){
				LoginVO user=(LoginVO) itr.next();
				
				int y = (Integer)user.getLogin_Id();
				session.setAttribute("loginID",y);
				
				String type = user.getUser_Type();
				session.setAttribute("usertype",type);
				System.out.println("here user type is : "+type);

				String username=user.getUsername();
				session.setAttribute("username", username);
				if(type.equals("Admin"))
				{ 
				requestDispatcher = request.getRequestDispatcher("/Admin/index.jsp");  
				requestDispatcher.forward(request,response);  
				}
				else if(type.equals("jobseeker"))
				{
					/*CandidateVO cv=new CandidateVO();
					candidateDAO cd=new candidateDAO();
				LoginVO lv=new LoginVO();
				lv.setLogin_Id(y);
				cv.setLoginvo(lv);
				List ls5=cd.search(cv);
				CandidateVO cvj=(CandidateVO)ls5.get(0);
				String path=cvj.getPath();
				session.setAttribute("path", path);
				
				List l=cd.candidateId(cv);
				Iterator iterator = l.iterator();
				
				CandidateVO candidateVO2 = (CandidateVO)iterator.next();
				
				int x = candidateVO2.getCandidate_Id();
				System.out.println("candidate id is : "+x);
				session.setAttribute("candidateId", x);
				
				
				PostjobVO v1=new PostjobVO();
				postjobDAO d1=new postjobDAO();
				List l1=d1.search(v1);
				session.setAttribute("search",l1);
				
				
				*/	
					
			
					requestDispatcher = request.getRequestDispatcher("/main2.jsp");  
					requestDispatcher.forward(request,response);  
				}
			
					else if(type.equals("joblister"))
				{
			
					requestDispatcher = request.getRequestDispatcher("/main1.jsp");  
					requestDispatcher.forward(request,response);  
				}
				
			}
				else
				{
				System.out.println("User Id::"+session.getAttribute("loginID"));
				System.out.println("5555555555");
				session.setAttribute("value","Wrong Username or Password");
				/*System.out.println(session.getAttribute("value"));*/
				//RequestDispatcher rd = request.getRequestDispatcher("/Admin/Login.jsp"); 
				/*System.out.println("wrong username and password");*/
				//rd.forward(request,response); 
				requestDispatcher = request.getRequestDispatcher("/login.jsp");  
				requestDispatcher.forward(request,response);  
			}
		}
		else if(uri.contains("logout"))
		{
			System.out.println("3333333333333333333333");
			session.invalidate();
			System.out.println("after session invalidates");
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
			
		}
		else if(session.getAttribute("loginID") != null)
		{
			System.out.println("222222222222222222222222");
			System.out.println("login id after login : "+session.getAttribute("loginID") );
			System.out.println("after Login");
			String h = (String)session.getAttribute("usertype");
			System.out.println("type = = = " + h);
			if(h!=null && h.equals("Admin"))
			{
				
			System.out.println("chain");
			chain.doFilter(request,response);
			}
			
			
			else if(h!=null && h.equals("jobseeker"))
			{
				System.out.println("chain");
				chain.doFilter(request, response);
			}
			
			else if(h!=null && h.equals("joblister"))
			{
				System.out.println("chain");
				chain.doFilter(request, response);
			}
		}
		
		
		
		
	
		else
		{
			requestDispatcher = request.getRequestDispatcher("/login.jsp");  
			requestDispatcher.forward(request,response); 
		}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}