package proj.src;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/Conversao"})
public class Celsius_Fahrenheit extends HttpServlet {

    private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response, String metodo)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int min = request.getParameter("min") == "" ? -100 : Integer.parseInt(request.getParameter("min"));

            int max = request.getParameter("max") == "" ? 100 : Integer.parseInt(request.getParameter("max"));

            int incr = request.getParameter("incr") == "" ? 5 : Integer.parseInt(request.getParameter("incr"));
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Celsius-Fahrenheit</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h2>Conversão Celsius-Fahrenheit</h2>");
            if (min <= max){
                out.println("<table style=\"width:50%; border: 1px solid black; border-collapse: collapse;\">");
                out.println("<tr>");
                out.println("<th style=\"border:1px solid black;border-collapse: collapse;\"> Celsius </th>");
                out.println("<th style=\"border:1px solid black;border-collapse: collapse;\"> Fahrenheit </th>");
                out.println("</tr>");
                for(int i = min; i <= max; i+=incr){
                    out.println("<tr>");
                    out.println("<th style=\"border:1px solid black; border-collapse: collapse;\">" + i + "°C</th>");
                    out.println("<th style=\"border:1px solid black; border-collapse: collapse;\">" + ((i*1.8)+32) + "°F</th>");
                    out.println("</th>");
                }
                out.println("</table>");
            }
            else{
                out.println("<p> Valor mínimo maior que valor máximo! Tente novamente. </p>");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response, "GET");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response, "POST");
    }
}
