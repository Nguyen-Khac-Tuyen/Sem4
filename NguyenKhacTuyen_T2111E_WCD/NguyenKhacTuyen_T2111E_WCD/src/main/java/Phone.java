
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

public class Phone 
{
    /**
     * Đọc dữ liệu của nhiều dòng bản ghi
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static List<HashMap<String, String>> List() 
            throws SQLException, ClassNotFoundException
    {
        String sql = 
            "SELECT " +
                "id, " +
                "name_phone, " +
                "brand, " +
                "price, " +
                "description " +
            "FROM phone " ;
        
        DB.open(); 
        
        ResultSet rs = DB.q(sql);
        
        List<HashMap<String,String>> list = new ArrayList<>();
        
        while(rs.next())
        {
            HashMap<String,String> row = new HashMap<>();
            row.put("id", rs.getString("id"));
            row.put("name_phone",       rs.getString("name_phone"));
            row.put("brand",      rs.getString("brand"));
            row.put("price",   rs.getString("price"));
            row.put("description",   rs.getString("description"));
                
            list.add(row);             
        }
        
        DB.close(); 
        
        return list;
    }
    
    /**
     * @param id
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static HashMap<String,String> Detail(String id) 
            throws SQLException, ClassNotFoundException
    {
    	String sql = 
                "SELECT " +
                    "phone.id, " +
                    "name_phone, " +
                    "brand, " +
                    "price, " +
                    "description " +
                "FROM phone " +
                "WHERE phone.id='"+id+"'";
        
        DB.open();
        ResultSet rs = DB.q(sql);

        HashMap<String,String> row  = new HashMap<>();

        while(rs.next())
        {
        	row.put("id", rs.getString("id"));
            row.put("name_phone",       rs.getString("name_phone"));
            row.put("brand",      rs.getString("brand"));
            row.put("price",   rs.getString("price"));
            row.put("description",   rs.getString("description"));
                
            break;    
        }
        
        DB.close();
        
        return row;
    }
    
    /**
     * @param params
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static void Add(HashMap<Integer,String> params) 
            throws SQLException, ClassNotFoundException
    {
        String sql = " INSERT INTO phone "
                   + " SET name_phone =?, "
                   + "     brand =?, "
                   + "     price =?, "
                   + "     description =? "
                   ;
                       
        DB.exec(sql, params);
    }
    
    /**
     * @param params
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static void Edit(HashMap<Integer,String> params) 
            throws SQLException, ClassNotFoundException
    {
        String sql = " UPDATE phone "
                    + "SET name_phone =?,"
                    +     "brand =?,"
                    +     "price =?,"
                    +     "description =?"
                    + " WHERE id = ?";
                       
        DB.exec(sql, params);
    }
    
    /**
     * @param params
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static void Delete(HashMap<Integer,String> params) 
            throws SQLException, ClassNotFoundException
    {
        String sql = " DELETE FROM phone WHERE id = ?";
                       
        // Thực thi câu SQL 
        DB.exec(sql, params);
    }
}// end class
