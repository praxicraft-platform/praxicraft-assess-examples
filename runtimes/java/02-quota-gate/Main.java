import com.praxicraft.assess.Client;
public class Main { public static void main(String[] a) throws Exception { Client c=new Client(); System.out.println(c.org().retrieve()); System.out.println(c.org().stats()); } }
