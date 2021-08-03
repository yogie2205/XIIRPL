package BangunLib;

public class Segitiga implements IBangunDatar {
    private float tinggi;
    private float alas;
    
    public Segitiga(float alas, float tinggi) {
        this.tinggi = tinggi;
        this.alas = alas;
    }
    
    public float luas() {
        return alas * tinggi / 2;
    }
    
    public float keliling() {
        float hipo = 0;
        hipo = (float)Math.sqrt(Math.pow(alas, 2)+Math.pow(tinggi, 2));
        
        return hipo + alas + tinggi;
    }
}
