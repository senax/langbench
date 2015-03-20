import java.util.Date;

public class Test {
	public static void main(String[] args) {
		long i=0;
		long x=0;
        double z=0.0;
        Date currentDate = new Date();
        long msec = currentDate.getTime();
        for (i=1;i<100000000;i++) {
            x=3*i;
            z=Math.sqrt(x);
            x=x/i;
            currentDate = new Date();
        }
        msec = currentDate.getTime();
        System.out.println(msec);
        System.out.println(z);
	}
}
