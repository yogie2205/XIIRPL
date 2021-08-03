package BangunLib;

public class Persegi implements IBangunDatar {
    private float p;
    private float l;
    
    public Persegi(float p, float l) {
        this.p = p;
        this.l = l;
    }
    
    public float getPanjang() {
        return p;
    }
    
    public float getLebar() {
        return l;
    }
    
    public float luas() {
        return p * l;
    }
    
    public float keliling() {
        return 2 * (p + l);
    }
}
