package thread;

public class CobaThread {
    public static void main(String[] args) {
        My_Thread thread1 = new My_Thread("THREAD  1");
        thread1.start();
        
        My_Thread thread2 = new My_Thread("THREAD 2");
        thread2.start();
    }
}