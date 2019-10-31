/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;


import Model.Match;
import Services.MatchesManager;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author goturak
 */
public class MatchServlet extends HttpServlet {
    MatchesManager mm= new MatchesManager();
/**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //String requestedMatch= request.getParameter("m");
        Match m= mm.getRandomMatch();
     
        if(m!=null){
            request.setAttribute("match", m);
           
            request.getRequestDispatcher("WEB-INF/pages/Match.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("WEB-INF/pages/PlayerNotFound.jsp").forward(request,response);
        }
    
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}