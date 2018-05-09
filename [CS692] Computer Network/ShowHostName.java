import java.net.*;

class ShowHostName{
	public static void main(String[] args) {
		try {
            InetAddress host = InetAddress.getLocalHost();
            String hostName = host.getHostName();
            System.out.println("Current IP address : " + host);
            System.out.println("Current Hostname : " + hostName);
 
        }catch (Exception e) {
 
            e.printStackTrace();
        }
	}
}
/*
Current IP address : baka/127.0.1.1
Current Hostname : baka
*/