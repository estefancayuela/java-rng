import java.sql.*;

public class Main {
    public static void main(String[] args) {
        dialogue_caller();
        enemies_caller();
      }

    static void dialogue_caller(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Test", "root", "root");

            Statement statement = connection.createStatement();

            ResultSet resultSet=statement.executeQuery("SELECT dialogue_text FROM dialogue WHERE dialogue_abr = 'welcome';");

            while (resultSet.next()) {
                System.out.println(resultSet.getString(1));
            }
            connection.close();
        }

        catch (Exception e){
            System.out.println(e);
        }};

        static void enemies_caller(){
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Test", "root", "root");

                Statement statement = connection.createStatement();

                ResultSet resultSet=statement.executeQuery("select enemies_text from enemies WHERE enemies_name = 'Ogre';");

                while (resultSet.next()) {
                    System.out.println(resultSet.getString(1));
                }
                connection.close();
            }

            catch (Exception e){
                System.out.println(e);
            }
    }

  }
