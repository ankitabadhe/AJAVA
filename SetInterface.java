import java.util.*;
public class SetInterface {
    public static void main(String args[]) {

        System.out.println("Enter the number of Elements :");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        HashSet<String> hs = new HashSet<String>();
        
        for (int i = 0; i < n; i++) {
            System.out.println("Enter Element :" + i );
            String al = sc.next();
            hs.add(al);
        }
        System.out.println("\nThe Elements are :");
        System.out.println(hs);

        HashSet<String> hs2 = new HashSet<String>();
        for (int i = 0; i < n; i++) {
            System.out.println("Enter element :" + i + " of second set :");
            String al = sc.next();
            hs2.add(al);
        }
        System.out.println("\nSet 1");
        System.out.println(hs);
        System.out.println("Set 2");
        System.out.println(hs2);
        System.out.println("\nAfter adding elements into another Set :");
        hs2.addAll(hs);
        System.out.println(hs2);
        System.out.println("\nEnter element to remove :");
        String removeElement = sc.next();
        if (hs2.contains(removeElement)) {
            hs2.remove(removeElement);
            System.out.println(hs2);
        } else {
            System.out.print("\nElement not found");
        }
        System.out.println("\nEnter Element to Search :");
        String searchElement = sc.next();
        if (hs2.contains(searchElement)) {
            System.out.println("\nElement Exists");
        } else {
            System.out.println("\nElement not found");
        }
        sc.close();
    }
}
