package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.sun.corba.se.impl.protocol.giopmsgheaders.Message.*;



import java.io.*;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.security.MessageDigest;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import VO.LoginVO;
//import VO.UserVO;

import DAO.loginDAO;

/**
 * Servlet implementation class Circular
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrationController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {		
	}
	
	protected void forgetPassword(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session =((HttpServletRequest) request).getSession();
		String email = request.getParameter("email");
		
		
		LoginVO login_VO = new LoginVO();
		login_VO.setEmail(email);
		
		loginDAO login_DAO= new loginDAO();
		List list = login_DAO.forgetPassword(login_VO);
		
		Iterator iterator = list.iterator();
		while(iterator.hasNext())
		{
			LoginVO vo = (LoginVO) iterator.next();
			
			sendMail(vo,request, response);
		}
		if(list.size() == 0)
		{
			Iterator itr = list.iterator();
			LoginVO user=(LoginVO) itr.next();
			
			int y = (Integer)user.getLogin_Id();
			session.setAttribute("loginID",y);
			
			String type = user.getUser_Type();
			session.setAttribute("usertype",type);
			System.out.println("here user type is : "+type);

			String username=user.getUsername();
			session.setAttribute("username", username);
			if(type.equals("jobseeker"))
			{
			response.sendRedirect("main2.jsp");
			
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
		}
		
	}

	private void sendMail(LoginVO login_VO, HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		java.util.Properties properties = new java.util.Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
		mailSession.setDebug(false);

		try {
			
			MimeMessage message = new MimeMessage(mailSession);

			message.setContent("Hello, <br>EmailId is : "+login_VO.getEmail()+" <br> and Password is : "+login_VO.getPassword()+" ", "text/html");
			message.setSubject("Your EmailID and Password");

			InternetAddress sender = new InternetAddress("shahaaakash73@gmail.com","Administrator");
			InternetAddress receiver = new InternetAddress(login_VO.getEmail());
			message.setFrom(sender);
			message.setRecipient(Message.RecipientType.TO, receiver);
			message.saveChanges();

			javax.mail.Transport transport = mailSession.getTransport("smtp");
			transport.connect("smtp.gmail.com", 587, "shahaaakash73@gmail.com","8238307850");
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();

		} catch (Exception e) {
			System.out.println("err = " + e);
		}

		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String flag= request.getParameter("flag");
		
		if(flag.equals("forgotpassword"))
		{
			forgetPassword(request, response);
			
		}
		
	}

	/*protected void insert(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// Receiving the parameters from the Registration Form
		String username = request.getParameter("username");
		int password = Integer.parseInt(request.getParameter("password"));
		 Setting the properties into the VO's Object 

		LoginVO loginvo = new LoginVO();

		loginvo.setUsername(username);
		loginvo.setPassword(password);

		LoginDAO logindao = new LoginDAO();
		logindao.insert(loginvo);

		 This function send the email containing the activation link 

		sendMail(loginvo);

		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}
*/
	/*protected void updatePassword(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// Receiving the parameters from the Registration Form
		String username = request.getParameter("username");
		int password = Integer.parseInt(request.getParameter("password"));
		 Setting the properties into the VO's Object 

		LoginVO loginvo = new LoginVO();

		loginvo.setUsername(username);
		loginvo.setPassword(password);

		LoginDAO logindao = new LoginDAO();
		logindao.update(loginvo);

		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}*/

	/*
	 * protected void profile(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException {
	 * 
	 * UserDAO DAO_obj = new UserDAO(); List obj = DAO_obj.showAll();
	 * 
	 * HttpSession session = request.getSession();
	 * session.setAttribute("obj_all", obj); session.removeAttribute("msg");
	 * response.sendRedirect(request.getContextPath() +
	 * "/ActivationLink/profile.jsp");
	 * 
	 * }
	 */
	/*
	 * protected void sendActivationLink(UserVO VO_obj, HttpServletRequest
	 * request, HttpServletResponse response) throws ServletException,
	 * IOException {
	 * 
	 * String link = generateHashCode(VO_obj); Date dispatchDT = new Date();
	 * 
	 * System.out.println(dispatchDT.toString());
	 * 
	 * Setting the parameter for link table from confirming the user's identity
	 * 
	 * 
	 * LinkVO linkVO = new LinkVO(); linkVO.setLink(link);
	 * linkVO.setDispatchDT(dispatchDT.getTime()); linkVO.setStatus(0);
	 * linkVO.setUserID(VO_obj);
	 * 
	 * LinkDAO linkDAO = new LinkDAO(); linkDAO.insert(linkVO);
	 * 
	 * String activationLink =
	 * "http://localhost:8080/ActivationAndForgotPassword/Verification?authentication="
	 * + linkVO.getLink() + "&proc=activation";
	 * 
	 * sendMail(VO_obj.getEmail(), activationLink, "Account Activation");
	 * 
	 * }
	 */
	/*
	 * protected void sendResetLink(UserVO VO_obj, HttpServletRequest request,
	 * HttpServletResponse response) throws ServletException, IOException {
	 * 
	 * String link = generateHashCode(VO_obj); Date dispatchDT = new Date();
	 * 
	 * System.out.println(dispatchDT.toString());
	 * 
	 * Setting the parameter for link table from confirming the user's identity
	 * 
	 * 
	 * LinkVO linkVO = new LinkVO(); linkVO.setLink(link);
	 * linkVO.setDispatchDT(dispatchDT.getTime()); linkVO.setStatus(0);
	 * linkVO.setUserID(VO_obj);
	 * 
	 * LinkDAO linkDAO = new LinkDAO(); linkDAO.insert(linkVO);
	 * 
	 * String activationLink =
	 * "http://localhost:8080/ActivationAndForgotPassword/Verification?authentication="
	 * + linkVO.getLink() + "&proc=forgotPassword";
	 * 
	 * sendMail(VO_obj.getEmail(), activationLink, "Reset Link");
	 * 
	 * }
	 */
/*

	protected String generateHashCode(UserVO VO_obj) {

		String myKey = VO_obj.getUserName() + VO_obj.getUserID();

		byte[] unencodedPassword = myKey.getBytes();
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("MD5");
		} catch (Exception e) {
		}
		md.reset();
		md.update(unencodedPassword);
		byte[] encodedPassword = md.digest();
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < encodedPassword.length; i++) {
			if (((int) encodedPassword[i] & 0xff) < 0x10) {
				buf.append("0");
			}
			buf.append(Long.toString((int) encodedPassword[i] & 0xff, 16));
		}
		String hashCode = buf.toString();

		return hashCode;

	}

	protected void update(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		show(request, response);
	}

	protected void edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void delete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		int login_id = Integer.parseInt(request.getParameter("login_id"));

		LoginVO VO_obj = new LoginVO();
		VO_obj.setLogin_id(login_id);

		LoginDAO DAO_obj = new LoginDAO();
		DAO_obj.delete(VO_obj);

		response.sendRedirect(request.getContextPath() + "/login.jsp");

	}

*/	
	/*protected void show(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		loginDAO DAO_obj = new loginDAO();
		List obj = DAO_obj.showAll();

		HttpSession session = request.getSession();
		session.setAttribute("obj_all", obj);
		response.sendRedirect(request.getContextPath() + "Company/login.jsp");

	}*/

}
