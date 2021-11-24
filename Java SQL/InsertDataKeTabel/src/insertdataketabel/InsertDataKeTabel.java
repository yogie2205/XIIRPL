package insertdataketabel;
import java.sql.*;

public class InsertDataKeTabel {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/belajar";
    static final String USER = "root";
    static final String PASS = "";
    
    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            System.out.println("Koneksi ke database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            
            System.out.println("Koneksi ke database berhasil.");
            
            System.out.println("Memasukkan record ke dalam tabel...");
            stmt = conn.createStatement();
            
            String sql = "insert into registration values" +
                         "(101, 'Ali', 'Setiawan', 11)," +
                         "(102, 'Aji', 'Septian', 12)," +
                         "(103, 'Reyhan', 'Wasistha', 13)";
            stmt.executeUpdate(sql);
            
            System.out.println("Memasukkan record ke dalam tabel berhasil.");
        }
        catch (SQLException se) {
            se.printStackTrace();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            try {
                if (stmt != null) {
                    conn.close();
                }
            } 
            catch (SQLException se) {}
            
            try {
               if (conn != null) {
                   conn.close();
               }
            }
            catch (SQLException se) {
                se.printStackTrace();
            }
        }
        System.out.println("Selesai.");
    }
}