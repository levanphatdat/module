public class Calculator {
    public static double calculator(double firstOperand, double secondOperand, String operator) {
        switch (operator) {
            case "Addition":
                return firstOperand + secondOperand;
            case "Subtraction":
                return firstOperand - secondOperand;
            case "Multiplication":
                return firstOperand * secondOperand;
            case "Division":
                if (secondOperand == 0) {
                    throw new ArithmeticException();
                } else {
                    return firstOperand / secondOperand;
                }
            default:
                return 0;
        }
    }
}
