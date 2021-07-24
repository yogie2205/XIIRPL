//Menggunakan interface runnable
class Multix implements Runnable{
	public void run(){
	System.out.println("thread implements is running....");	
	}
	
	public static void main (String args[]){
		Multix m1 = new Multix();
		Thread t1 = new Thread(m1);
		t1.start();
	}
}