package koneksi;
import com.mysql.jdbc.Driver;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;

public class konek {
    private static Connection koneksi;
    
    public static Connection GetConnection() throws SQLException {
        if (koneksi == null) {
            new Driver();
            koneksi = DriverManager.getConnection("jdbc:mysql://localhost/db_form", "root", "");
        }
        return koneksi;
    }
}