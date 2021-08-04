package BangunLib;

public class Bola implements IBangunRuang {
    private float radius;
    
    public Bola(float radius) {
        this.radius = radius;
    }
    
    public float luas() {
        return (float)(4 * Math.PI * Math.pow(radius, 2));
    }
    
    public float volume() {
        return (float)(4 * Math.PI * Math.pow(radius, 3) / 3);
    }
}
