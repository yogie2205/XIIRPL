package javabasisdata;
import java.sql.*;

public class JavaBasisData {
    // JDBC Driver name dan database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/";
    
    // Database credentials
    static final String USER = "root";
    static final String PASS = "";
    
    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            System.out.println("Sedang koneksi ke database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            
            System.out.println("Membuat database...");
            stmt = conn.createStatement();
            
            String sql = "create database belajar";
            stmt.execute(sql);
            
            System.out.println("Database sukses dibuat.");
        } catch(SQLException se) {
            se.printStackTrace();
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch(SQLException se2) {
                
            }
            
            try {
                if (conn != null) {
                    conn.close();
                } 
            } catch(SQLException se) {
                se.printStackTrace();
            }
        }
        System.out.println("The end.");
    }
}