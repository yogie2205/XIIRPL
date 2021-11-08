package thread;

public class My_Thread implements Runnable {
    Thread thread_ok;
    private String x;
        
    My_Thread(String y) {
        x = y;
    }

    @Override
    public void run() {
        System.out.println("THREAD SEDANG BERJALAN" + x);
        
        for (int i = 0; i < 10; i++) {
            System.out.println(i);
            System.out.println(x);
            
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                System.out.println("THREAD TERINTERUPT");
            }
        }
    }
    
    public void start() {
        System.out.println("THREAD LANJUT");
        
        if (thread_ok == null) {
            thread_ok = new Thread(this, x);
            thread_ok.start();
        }
    }
}