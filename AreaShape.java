import java.util.*;
abstract class Shape {
    abstract double area();
}
class Square extends Shape {
    double side;
    public Square(double side) {
        this.side = side;
    }
    public double area() {
        return side*side;
    }
}
class BoundedShape<T extends Shape> {
    T shape;
    public BoundedShape(T shape) {
        this.shape = shape;
    }
    public void displayArea() {
        System.out.println("Area:" + shape.area());
    }
}
class Circle extends Shape {
    double radius;
    public Circle(double radius) {
        this.radius = radius;
    }
    public double area() {
        return Math.PI*radius*radius;
    }
}
public class AreaShape {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter radius of circle:");
        Double radius  = sc.nextDouble();
        Circle circle=new Circle(radius);
        BoundedShape<Circle> boundedShape=new BoundedShape<>(circle);
        boundedShape.displayArea();
        System.out.println("Enter side of square:");
        Double side = sc.nextDouble();
        Square square=new Square(side);
        BoundedShape<Square> boundedShape2=new BoundedShape<>(square);
        boundedShape2.displayArea();
        sc.close();
    }
}

