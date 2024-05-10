/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.upload;

import com.database.Dbconnection;
import com.database.Queries;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author KishanVenky
 */
public class DoctorRegAction extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
              try{
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    String address=request.getParameter("address");
    String gender=request.getParameter("gender");
    String hospital=request.getParameter("hospital");
    String specialization=request.getParameter("specialization");
     
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
   
    String query="insert into doctor values(null,'"+name+"','"+email+"','"+mobile+"','"+address+"','"+gender+"','"+hospital+"','"+specialization+"','"+uname+"','"+pwd+"')";
int i=Queries.getExecuteUpdate(query);

    if(i>0){
     response.sendRedirect("DoctorUserReg.jsp?msg=Registration successful...!!!");
    }else{
response.sendRedirect("DoctorUserReg.jsp?msg=Regsitration Failes...!!!");
}
}catch(Exception e){
    System.out.println(e);
}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
