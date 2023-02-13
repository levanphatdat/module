import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/calculator")
public class CalculatorServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        double firstOperand = Double.parseDouble(request.getParameter("first-operand"));
        String operator = request.getParameter("operator");
        double secondOperand = Double.parseDouble(request.getParameter("second-operand"));
        double result = 0.0;
        try {
            result= Calculator.calculator(firstOperand, secondOperand, operator);
            request.setAttribute("result", result);
        } catch (ArithmeticException e) {
            e.printStackTrace();
        }
        switch (operator) {
            case "Addition":
                operator = "+";
                break;
            case "Subtraction":
                operator = "-";
                break;
            case "Multiplication":
                operator = "*";
                break;
            case "Division":
                operator = "%";
                break;
            default:
                break;
        }
        request.setAttribute("first-operand", firstOperand);
        request.setAttribute("operator", operator);
        request.setAttribute("second-operand", secondOperand);
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
