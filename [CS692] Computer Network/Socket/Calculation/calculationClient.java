import java.io.*;
import java.net.*;

class calculationClient{
	public static void main(String[] args) {
		try{
			Socket s = new Socket("localhost", 1111);
			BufferedReader br = new BufferedReader(new InputStreamReader(s.getInputStream()));
			BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
			PrintStream out = new PrintStream(s.getOutputStream());

			System.out.print("Enter the number seperated by space: ");
			String str = in.readLine();

			System.out.println("Sending numbers to the server. Waiting for server to send the summation...");
			out.println(str);

			str = br.readLine();

			System.out.println("Server responded. Summation: " + str);

			s.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}

/*
Enter the number seperated by space: 1 101 1 6
Sending numbers to the server. Waiting for server to send the summation...
Server responded. Summation: 109
*/