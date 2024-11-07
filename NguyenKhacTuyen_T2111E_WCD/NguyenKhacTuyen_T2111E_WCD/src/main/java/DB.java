/*
 * File: DB.java
 * Thư viện hàm chức năng quản trị CSDL
 * Tác giả: Phương VH <phuonghuuvu@gmail.com> 
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;


public class DB 
{
    // Thông tin máy chủ CSDL MySQL
    static String url       = "jdbc:mysql://localhost:3306/db_phone?useUnicode=yes&characterEncoding=UTF-8";
    static String user      = "root";
    static String password  = "";
    
    // Biến này để duy trì kết nối máy chủ, máy khách
    static Connection dbConnection = null;
        
    /**
     * Mở kết nối tới máy chủ CSDL
     *
     * @throws SQLException
     * @throws java.lang.ClassNotFoundException
     */
    public static void open() 
            throws SQLException, ClassNotFoundException 
    {
        Class.forName("com.mysql.jdbc.Driver"); // 
        dbConnection = DriverManager.getConnection(url, user, password);
        
        Statement stmt = dbConnection.createStatement();
        stmt.executeQuery("SET CHARACTER SET 'UTF8'");
    }
    
    /**
     * Đóng kết nối tới máy chủ CSDL
     * @throws SQLException 
     */
    public static void close() 
            throws SQLException 
    {
        if(dbConnection != null)
            dbConnection.close();
    }
    
    /**
     * Lấy ra dữ liệu của 1 bảng MySQL
     * @param sql
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static ResultSet q(String sql) 
            throws SQLException, ClassNotFoundException 
    {
        // Thực thi câu truy vấn
        Statement stmt = dbConnection.createStatement();
        
        ResultSet rs = stmt.executeQuery(sql);
        
        return rs;
    }
        
    // Thực thi các câu SQL insert, update, delete
    // https://coderwall.com/p/rvduyw/jdbc-inserting-unicode-utf-8-characters-into-mysql
    public static void exec(String sql, HashMap<Integer,String> params) 
            throws SQLException, ClassNotFoundException 
    {
        open(); // Mở kết nối
        
        PreparedStatement preparedSQL = dbConnection.prepareStatement(sql);
        
        for (Integer key : params.keySet())
        {
            //preparedSQL.setString(key, params.get(key));
            preparedSQL.setNString(key, params.get(key));
        }
        
        System.out.println(preparedSQL);
            
            
            // execute the preparedstatement
        preparedSQL.execute();
        
        close();
    }
}// end class
