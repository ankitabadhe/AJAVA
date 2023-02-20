import java.util.*;
public class LnkList {
    public static void main(String args[]){
        LinkedList<String> al = new LinkedList<String>();
        al.add("Ducati Panigale V4S");
        al.add("Honda CBR1000RR-R Fireblade");
        al.add("Yamaha YZF-R1");
        al.add("Suzuki GSX-R1000R");
        al.add("Kawasaki ZX-10R");
    

        ListIterator<String> itr = al.listIterator();
        System.out.println("First Side:");
        while(itr.hasNext()){
            System.out.println(itr.next());
        }
        System.out.println("\nSecond Side:");
        while(itr.hasPrevious()){
            System.out.println(itr.previous());
        }
    }
}

