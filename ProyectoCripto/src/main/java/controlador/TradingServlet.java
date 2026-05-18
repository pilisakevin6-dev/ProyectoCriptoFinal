package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

@WebServlet("/TradingServlet")
public class TradingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. Recibimos cuánto apostó el usuario
        int inversion = Integer.parseInt(request.getParameter("monto"));
        String nombre = (String) request.getSession().getAttribute("usuario");
        
        // 2. Simulamos el mercado (Aleatorio)
        Random azar = new Random();
        boolean mercadoSubio = azar.nextBoolean(); // true = Ganó, false = Perdió
        
        // Calculamos un porcentaje aleatorio entre 10% y 50%
        double porcentaje = 10 + (50 - 10) * azar.nextDouble();
        double resultadoFinal;
        
        String color;
        String mensaje;
        String graficoImg;

        if (mercadoSubio) {
            double ganancia = inversion * (porcentaje / 100);
            resultadoFinal = inversion + ganancia;
            color = "#2ea043"; // Verde
            mensaje = "🚀 ¡EL MERCADO SUBIÓ! VENDISTE A TIEMPO.";
            // Gif de gráfico subiendo
            graficoImg = "https://media1.giphy.com/media/LdOyjZ7io5Msw/giphy.gif"; 
        } else {
            double perdida = inversion * (porcentaje / 100);
            resultadoFinal = inversion - perdida;
            color = "#ff4b4b"; // Rojo
            mensaje = "📉 EL MERCADO SE DESPLOMÓ. TUVISTE QUE VENDER.";
            // Gif de gráfico bajando o triste
            graficoImg = "https://media.tenor.com/Images/F2.gif"; // O una imagen de caída
        }

        // 3. Mostramos la pantalla de "Resultado del Trading"
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        out.println("<html><head><style>");
        out.println("body { background-color: #0d1117; color: white; font-family: 'Segoe UI', sans-serif; text-align: center; padding: 50px; }");
        out.println(".card { background: #161b22; padding: 40px; border-radius: 20px; display: inline-block; border: 2px solid " + color + "; }");
        out.println("h1 { font-size: 3rem; margin: 0; }");
        out.println("</style></head><body>");
        
        out.println("<div class='card'>");
        out.println("<h2 style='color:" + color + "'>" + mensaje + "</h2>");
        out.println("<img src='" + graficoImg + "' style='width:300px; border-radius:10px; margin:20px;'>");
        out.println("<p>Invertiste: $" + inversion + "</p>");
        out.println("<h1>Tu saldo final: $" + String.format("%.2f", resultadoFinal) + "</h1>");
        out.println("<br><a href='simulador.jsp' style='color:white; text-decoration:none; border:1px solid white; padding:10px; border-radius:5px;'>Intentar de nuevo</a>");
        out.println("</div>");
        
        out.println("</body></html>");
    }
}