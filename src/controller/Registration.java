package controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.loginDAO;
import DAO.registrationDAO;
import VO.LoginVO;
import VO.RegistrationVO;


/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session =((HttpServletRequest) request).getSession();
		
		String s1=request.getParameter("email");
		String s2=request.getParameter("password");
		String s3=request.getParameter("jj");
		String s4=request.getParameter("username");
		
		
		
		LoginVO user=new LoginVO();
		String type = user.getUser_Type();
		session.setAttribute("usertype",type);
		System.out.println("here user type is : "+type);

		String username=user.getUsername();
		session.setAttribute("username", username);
	     if ((!s1.contains("@albany.edu") && (s3.equals("jobseeker"))) || (s1.contains(" ")) || (s1.isEmpty()))
		{
			 
	    	 request.setAttribute("error", "Enter university email id");
			
			getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
		}

		
		
	     else
	     {
	    System.out.println("Hello");
		LoginVO v=new LoginVO();
		v.setEmail(s1);
		v.setPassword(s2);
		v.setUser_Type(s3);
		v.setUsername(s4);
		
		loginDAO d=new loginDAO();
		d.insert(v);
		response.sendRedirect("login.jsp");
	     }
		
		
	}
	
	
		
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}
	
		
		
		
		
		
		
		/*response.sendRedirect("Company/login.jsp");
		
		HttpSession session=request.getSession();
		System.out.println(v.getLogin_Id());
		System.out.println(v1.getRegistration_Id());*/	
		
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
}
