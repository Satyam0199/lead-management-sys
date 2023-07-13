package jspdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jspbean.Users;

public class UsersDao {

    public static Connection getConnection() {

        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/leadmanagementsystem", "root", "1234");
            System.out.println("Connection Done");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static boolean validate(Users ur) {
        boolean status = false;

        try {
            Connection con = UsersDao.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select * from users where email=? and password=?");

            ps.setString(1, ur.getEmail());
            ps.setString(2, ur.getPassword());

            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;

    }

    public static int insertUser(Users ur) {
        int st = 0;

        try {
            Connection con = UsersDao.getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO users(name,email,password,cfpassword) VALUES (?,?,?,?)");
            ps.setString(1, ur.getName());
            ps.setString(2, ur.getEmail());
            ps.setString(3, ur.getPassword());
            ps.setString(4, ur.getCfpassword());

            st = ps.executeUpdate();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return st;

    }
}
