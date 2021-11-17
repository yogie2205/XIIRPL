package tabelbasisdata;
import java.sql.*;

public class TabelBasisData {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/belajar";
    static final String USER = "root";
    static final String PASS = "";
    
    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;
        
        try {
            // registrasi JDBC
            Class.forName("com.mysql.jdbc.Driver");
            
            // open koneksi
            System.out.println("Koneksi ke database terpilih.");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            
            System.out.println("Koneksi sukses.");
            
            // eksekusi query
            System.out.println("Membuat table dalam database.");
            stmt = conn.createStatement();
            
            String sql = "CREATE TABLE registration" +
                         "(id INTEGER NOT NULL," +
                         "first VARCHAR(255)," +
                         "last VARCHAR(255)," +
                         "age INTEGER," +
                         "PRIMARY KEY (id))";
            
            stmt.execute(sql);
            System.out.println("Table telah dibuat.");
        } catch (SQLException se) {
            // handle error untuk JDBC
            se.printStackTrace();
        } catch (Exception e) {
            // handle error untuk Class.forName
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    conn.close();
                }
            } catch (SQLException se2) {
                
            }
            
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se3) {
                se3.printStackTrace();
            }
        }
        System.out.println("Selesai");
    }   
}