import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet", urlPatterns = "/abc")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/abc.jsp");
        String a = request.getParameter("a");
        String b = request.getParameter("b");
        request.setAttribute("x", a);
        request.setAttribute("y", b);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/abc.jsp");
        String a = request.getParameter("a");
        String b = request.getParameter("b");
        request.setAttribute("x", a);
        request.setAttribute("y", b);
        requestDispatcher.forward(request, response);
    }
}
