
import java.util.Scanner;
interface Shape2 {
    abstract void Area();
    Scanner scanner = new Scanner(System.in);
}
class Circle1 implements Shape2{
    public void Area() {
        System.out.println("Enter radius of circle:");
        float radius = scanner.nextFloat();
        float area = (float)(Math.PI*radius*radius);
        System.out.println("Area of Circle is "+area);
    }
}
class Square1 implements Shape2{
    public void Area(){
        System.out.println("Enter the length of the side of a square:");
        float side=scanner.nextFloat();
        System.out.println("Area of Square is "+(side*side));
    }
}
public class BoundShape<T extends Shape2>{
    T obj;
    BoundShape(T obj){
        this.obj=obj;
    }
    void getObj(){
        this.obj.Area();
    }
 public static void main(String args[]){
	 BoundShape<Circle1> c=new BoundShape<Circle1>(new Circle1());
        c.getObj();
        BoundShape<Square1> s=new BoundShape<Square1>(new Square1());
        s.getObj();
    }
}

