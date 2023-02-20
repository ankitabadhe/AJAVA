import java.util.*;
public class ArrList
{
    public static void main(String[] args) {
        System.out.print("Enter the no of elements:");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        ArrayList<Integer> al = new ArrayList<>(n);
        System.out.print("Enter the elements:");
        for(int i=0;i<n;i++)
        {
            al.add(sc.nextInt());
        }
        System.out.println("Traversed Elements:");
        Iterator<Integer> itr = al.iterator();
        while(itr.hasNext()) 
        System.out.println(itr.next());
        sc.close();
    }
}
