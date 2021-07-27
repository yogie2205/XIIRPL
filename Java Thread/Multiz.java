class Multiz extends Thread {
    public void run(){
    System.out.println("thread extends is running...");
}
public static void main(String args[]){
    Multiz t1 = new Multiz();
    t1.start();
}
}
