import java.util.Scanner;
import java.util.ArrayList;
public class Employee {
    int id;
    String name;
    int salary;
    Employee(int id,String name,int salary){
        this.id= id;
        this.name = name;
        this.salary = salary;
    }
    public static void main(String[] args){
        ArrayList<Employee> ArrEmp = new ArrayList<Employee>();
        Employee e1 = new Employee(1,"Ravi Rajguru",60000);
        Employee e2 = new Employee(2,"faran Mathur",80000);
        Employee e3 = new Employee(3,"Hari Somne",50000);
        Employee e4 = new Employee(4,"Sunil Pal",40000);
        Employee e5 = new Employee(5,"Suprit Rane",10000);

        ArrEmp.add(e1);
        ArrEmp.add(e2);
        ArrEmp.add(e3);
        ArrEmp.add(e4);
        ArrEmp.add(e5);

        for(Employee emp:ArrEmp)
        {
            System.out.println("Employee ID:"+emp.id);
            System.out.println("Employee Name:"+emp.name);
            System.out.println("Employee Salary:"+emp.salary);
        }
        System.out.println("\nEnter ID of the Employee which you want to remove:");
        Scanner sc = new Scanner(System.in);
        int empId = sc.nextInt();
        ArrEmp.remove(empId-1);
        System.out.println("\nUpdated Array List");
        for(Employee e: ArrEmp) {
            System.out.println("ID:" + e.id + "\tName:" + e.name + "\tSalary:" + e.salary );
            sc.close();
        }
    }
}
