package control;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author Evilill
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String user_email = request.getParameter("user_email");
        String user_password = request.getParameter("user_password");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            if (User.login(user_email, user_password)) {
                out.println("Welcome!");
                HttpSession session = request.getSession();
                session.setAttribute("email", user_email);
                //out.println(session.getAttribute("email"));
            } else {
                out.println("fail");
            }

        } catch (Exception e) {
            out.print("Error:" + e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        out.println(session.getAttribute("email"));
        String act = request.getParameter("act");
        if (act != null) {
            if (act.equals("logout")) {
                request.getSession().invalidate();
            }
        }
    }

    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
