import java.sql.*;

public class Main {
    public static void main(String[] args) {
      try{
        Class.forName("com.mysql.cj.jdbc.Driver");
         
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Test", "root", "root");
    
        Statement statement = connection.createStatement();

        ResultSet resultSet=statement.executeQuery("select * from enemies");

        while (resultSet.next()) {
          System.out.println(resultSet.getInt(1)+" "+resultSet.getString(2)+" "+resultSet.getString(3));
        }
        connection.close();
      }

    catch (Exception e){
      System.out.println(e);
    }}

    static String adventure_caller(String name){
      return "Hi world?" + name;
    }

  }
