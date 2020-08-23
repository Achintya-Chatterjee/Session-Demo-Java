package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String id = req.getParameter("id");
		String pass = req.getParameter("password");
		
		if(id.equals("admin") && pass.equals("123"))
		{
			HttpSession session = req.getSession();
			session.setAttribute("email", id);
			
			RequestDispatcher rd1 = req.getRequestDispatcher("home.jsp");
			req.setAttribute("id", id);
			rd1.forward(req, resp);
		}
		else
		{
			RequestDispatcher rd1 = req.getRequestDispatcher("index.jsp");
			req.setAttribute("msg", "Sorry Invalid UserId Or Password");
			rd1.forward(req, resp);
		}
	}
}
