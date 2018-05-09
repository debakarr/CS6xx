import java.io.*;
import java.net.*;

class calculationServer{
	public static void main(String[] args) {
		try{
			ServerSocket ss = new ServerSocket(1111);
			Socket s = ss.accept();
			BufferedReader br = new BufferedReader(new InputStreamReader(s.getInputStream()));
			PrintStream out = new PrintStream(s.getOutputStream());

			System.out.println("Waiting for client to send message...");
			String str = br.readLine();
			System.out.println("Message Recieved. Doing summation.");

			String[] strArr = str.split(" ");
			int sum = 0;
			for(int i = 0; i<strArr.length;i++){
				sum = sum + Integer.parseInt(strArr[i]);
			}

			System.out.println("Sending summation to client...");
			out.println(sum);
			System.out.println("Done.");

			s.close();
			ss.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}

/*
Waiting for client to send message...
Message Recieved. Doing summation.
Sending summation to client...
Done.
*/