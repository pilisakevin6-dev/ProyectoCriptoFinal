package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/CalculadoraServlet")
public class CalculadoraServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double monto = Double.parseDouble(request.getParameter("monto"));
        double compra = Double.parseDouble(request.getParameter("compra"));
        double venta = Double.parseDouble(request.getParameter("venta"));

        double balance = (monto / compra * venta) - monto;
        String nombre = (String) request.getSession().getAttribute("usuario");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<body style='background:#0d1117; color:white; text-align:center; font-family:sans-serif; padding:100px;'>");
        out.println("<h1>" + nombre + ", aquí tienes tu resultado:</h1>");

        if (balance >= 0) {
            out.println("<h2 style='color:#00ff00;'>🚀 ¡GANASTE! +$" + String.format("%.2f", balance) + " USD</h2>");
        } else {
            out.println("<h2 style='color:#ff4b4b;'>📉 PERDISTE: -$" + String.format("%.2f", Math.abs(balance)) + " USD</h2>");
        }
        out.println("<br><a href='index.jsp' style='color:#f2a900; text-decoration:none;'>Reiniciar Recorrido</a>");
        out.println("</body>");
    }
}