public interface kendaraan { // sebuah interface
    public void bahanBakar(); // method kosong
}

class rodaEmpat implements kendaraan { // implementasi
    public void bahanBakar() {
        System.out.println("Interface method is implemented");
        System.out.println("Kendaraan Wahyu membutuhkan bahan bakar");
    }
    
    public static void main(String[] args) {
        kendaraan mobil = new rodaEmpat(); // terjadi pembentukan objek baru mobil
        mobil.bahanBakar(); // mobil method bahanBakar
    }
}