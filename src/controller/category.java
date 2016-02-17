package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.CategoryVO;
import DAO.categoryDAO;
/**
 * Servlet implementation class insert
 */
@WebServlet("/category")
public class category extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public category() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1=request.getParameter("flag");

		if(s1!=null && s1.equals("load"))
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
	
		 void insert(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
		{
			 String s=request.getParameter("categoryname");
			 String s1=request.getParameter("categorydescription");
			 categoryDAO r=new categoryDAO();
			 CategoryVO r1=new CategoryVO();
			 r1.setCat_Name(s);
			 r1.setCat_Desc(s1);
	         r.insert(r1);
		}
		 
		 void search(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
		 {
			 CategoryVO v=new CategoryVO();
			 categoryDAO r2=new categoryDAO();
			 List l=r2.search(v);
			 HttpSession session=request.getSession();
			 session.setAttribute("search",l);
			 response.sendRedirect("Admin/searchcategories.jsp"); 
		 }
		 
		 
		 void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
		 {
			 int categoryId=Integer.parseInt(request.getParameter("categoryId"));
			 CategoryVO v=new CategoryVO();
			 categoryDAO r2=new categoryDAO();
			 v.setCat_Id(categoryId);
			 List l=r2.edit(v);
			 HttpSession session=request.getSession();
			 session.setAttribute("edit",l);
			 response.sendRedirect("Admin/editcategories.jsp"); 
		 }
		 
		 void update(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
		 {
			 int categoryId=Integer.parseInt(request.getParameter("categoryId"));
			 String s=request.getParameter("categoryname");
			 String s1=request.getParameter("categorydescription");
			 CategoryVO v=new CategoryVO();
			 categoryDAO r2=new categoryDAO();
			 v.setCat_Name(s);
			 v.setCat_Desc(s1);
			 v.setCat_Id(categoryId);
			 r2.update(v);
			 response.sendRedirect("Admin/add_categories.jsp"); 
		 }
		 
		 
		 
		 
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 String s5=request.getParameter("flag");
			
		 if( s5!=null && s5.equals("f") )
		 {
			 insert(request,response);
		
		 }
	}

}
