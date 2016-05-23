import java.util.Iterator;
import java.util.ArrayList;
import java.lang.String;

public class Test {

    public static void main(String[] args) {

        ArrayList<String> list = new ArrayList<String>();
        list.add("Test A");

        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String val = it.next();
            System.out.println(val);
        }
    }
}
