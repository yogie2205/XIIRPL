package BangunLib;

public class Kubus implements IBangunRuang {
    private Persegi persegi;
    
    public Kubus(float sisi) {
        persegi = new Persegi(sisi, sisi);
    }
    
    public float luas() {
        return persegi.luas() * 6;
    }
    
    public float volume() {
        return persegi.getPanjang() * persegi.luas();
    }
}
