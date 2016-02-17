package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.categoryDAO;
import DAO.countryDAO;
import VO.CategoryVO;
import VO.CountryVO;

/**
 * Servlet implementation class country
 */
@WebServlet("/country")
public class country extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public country() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1=request.getParameter("flag");
		if(s1!=null && s1.equals("search"))
		{
			search(request,response);
		
		}
		else if (s1!=null && s1.equals("edit")) 
		{
			edit(request,response);		
		}
		
		else if (s1!=null && s1.equals("update")) 
		{
			update(request,response);		
		}
		

	 
	
}

void insert(HttpServletRequest request, HttpServletResponse response)
{	
	
	
	String s=request.getParameter("countryname");
	String s1=request.getParameter("countrydescription");
	countryDAO r=new countryDAO();
	CountryVO v=new CountryVO();
	v.setCountry_Name(s);
	v.setCountry_Desc(s1);
	r.insert(v);
	
}


void search(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
{
	 CountryVO v=new CountryVO();
	 countryDAO r2=new countryDAO();
	 List l=r2.search(v);
	 HttpSession session=request.getSession();
	 session.setAttribute("search",l);
	 response.sendRedirect("Admin/searchcountry.jsp"); 
}

void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
{	
	int i=Integer.parseInt(request.getParameter("countryId"));
	 CountryVO v=new CountryVO();
	 countryDAO r2=new countryDAO();
	 v.setCountry_Id(i);
	 List l=r2.edit(v);
	 HttpSession session=request.getSession();
	 session.setAttribute("edit",l);
	 response.sendRedirect("Admin/editcountry.jsp"); 
}

void update(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
{	
	int i=Integer.parseInt(request.getParameter("countryId"));
	String k=request.getParameter("countryname");
	String j=request.getParameter("countrydescription");
	 CountryVO v=new CountryVO();
	 countryDAO r2=new countryDAO();
	 v.setCountry_Id(i);
	 v.setCountry_Desc(j);
	 v.setCountry_Name(k);
	 r2.update(v);
	
	 search(request, response);
}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 String s5=request.getParameter("flag");
			if(s5!=null && s5.equals("f"))
					{
						insert(request,response);
					}
	}

}
