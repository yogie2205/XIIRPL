package membuat_interface;

public interface kendaraan {
    public void bahanBakar();
}

class rodaEmpat implements kendaraan {
    public void bahanBakar() {
        System.out.println("Interface method is implemented");
        System.out.println("Kendaraan Wahyu membutuhkan bahan bakar");
    }
    
    public static void main(String[] args) {
        kendaraan mobil = new rodaEmpat();
        mobil.bahanBakar();
    }
}
