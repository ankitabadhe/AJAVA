import java.util.*;
public class Cust {
    int Account_no;
    String Name;
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);
        HashMap<Integer,String> customer = new HashMap<Integer,String>();
        customer.put(1001,"Arohi");
        customer.put(1002,"Hari");
        customer.put(1003,"Sunil");
        customer.put(1004,"Raghav");
        customer.put(1005,"Ravi");
        System.out.print(customer);
        System.out.print("\nSearch Customer Account No:");
        int searchMap=sc.nextInt();
        System.out.print("Does account Number " +searchMap+ " exists ?");
        if(customer.containsKey(searchMap)) {
            System.out.print("\nYes");
            System.out.print("\nName of Customer with Account No. is as follows :\n" +searchMap+":- " +customer.get(searchMap));
        }
        else {
            System.out.print("\nNo");
        }
        sc.close();
    }
}
