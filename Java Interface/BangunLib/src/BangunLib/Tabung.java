package BangunLib;

public class Tabung implements IBangunRuang {
    private Lingkaran lingkaran;
    private float tinggi;
    
    public Tabung(float radius, float tinggi) {
        this.tinggi = tinggi;
        lingkaran = new Lingkaran(radius);
    }
    
    public float luas() {
        float ITutup = 2 * lingkaran.luas();
        float ISelimut = tinggi * lingkaran.keliling();
        
        return ITutup + ISelimut;
    }
    
    public float volume() {
        return tinggi * lingkaran.luas();
    }
}
