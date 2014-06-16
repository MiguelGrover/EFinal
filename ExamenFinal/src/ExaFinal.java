

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExaFinal
 */
@WebServlet("/ExaFinal")
public class ExaFinal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExaFinal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		float res = 0;
		String Data_1 = request.getParameter("Data1");
		String Data_2 = request.getParameter("Data2");
		float dato1 = Float.parseFloat(Data_1);
		float dato2 = Float.parseFloat(Data_2);
		String operacion = request.getParameter("Operador");
		if(operacion.equalsIgnoreCase("+")){
			res = dato1 + dato2;
		}
		if(operacion.equalsIgnoreCase("-")){
			res = dato1 - dato2;
		}
		if(operacion.equalsIgnoreCase("*")){
			res = dato1 * dato2;
		}
		if(operacion.equalsIgnoreCase("/")){
			res = dato1 / dato2;
		}
		String resultado = String.valueOf(res);
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.print("<html>"
				+ "<body>"
				+"Dato 1: "+dato1 
				+"</BR>"
				+"Dato 2: "+dato2
				+"</BR>"
				+"Operacion: " + operacion
				+"</BR>"
				+"Resultado: "+resultado
				
				+ "</body>"
				+ "</html>");
		
	}

}
