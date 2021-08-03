package BangunLib;

public class Lingkaran implements IBangunDatar {
    private float radius;
    
    public Lingkaran(float radius) {
        this.radius = radius;
    }
    
    public float getRadius() {
        return radius;
    }
    
    public float luas() {
        return (float)(Math.PI*Math.pow(radius, 2));
    }
    
    public float keliling() {
        return (float)(2*Math.PI*radius);
    }
}
