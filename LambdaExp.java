import java.util.Scanner;
public class LambdaExp {
    public static void main(String[] args) {
        interface Maths {
            public float Area();
        }
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the Height of the Triangle: ");
        int height = sc.nextInt();
        System.out.println("Enter the Base of the Triangle: ");
        int base = sc.nextInt();
        Maths Areas = () -> {
            float areaOfTriangle = (height * base) / 2;
            return areaOfTriangle;
        };
        System.out.println(
                "Area of the Triangle whose height is " + height + " & base is " +
                        base + " : " + Areas.Area());
        sc.close();
    }
}


