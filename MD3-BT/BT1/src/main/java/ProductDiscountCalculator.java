import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductDiscountCalculator", value = "/result")
public class ProductDiscountCalculator extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product = request.getParameter("description");
        float list = Float.parseFloat(request.getParameter("list"));
        float discount = Float.parseFloat(request.getParameter("discount"));
        float result = list * discount * 0.01f;
        float discount_price = list - result;
        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        printWriter.println("<h4>Product Description : " + product +"</h4>");
        printWriter.println("<h4>List Price : " + list +"</h4>");
        printWriter.println("<h4>Discount Percent : " + discount +"%</h4>");
        printWriter.println("<h4>Discount Amount : " + result +"</h4>");
        printWriter.println("<h4>Discount Price : " + discount_price +"</h4>");
        printWriter.println("</html>");
    }
}
