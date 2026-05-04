import java.sql.*;

public class TestDB {
    public static void main(String[] args) {
        String DB_URL = "jdbc:mysql://localhost:3306/ebookshop?useSSL=false&serverTimezone=UTC";
        String DB_USER = "root";
        String DB_PASS = "Exam123";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM books");
            
            System.out.println("<html><head><title>Ebookshop Inventory</title></head><body>");
            System.out.println("<h2>Ebookshop Inventory Display</h2>");
            System.out.println("<table border='1' cellpadding='10'>");
            System.out.println("<tr><th>ID</th><th>Title</th><th>Author</th><th>Price</th><th>Quantity</th></tr>");
            
            while (rs.next()) {
                System.out.println("<tr>");
                System.out.println("<td>" + rs.getInt("book_id") + "</td>");
                System.out.println("<td>" + rs.getString("book_title") + "</td>");
                System.out.println("<td>" + rs.getString("book_author") + "</td>");
                System.out.println("<td>$" + rs.getDouble("book_price") + "</td>");
                System.out.println("<td>" + rs.getInt("quantity") + "</td>");
                System.out.println("</tr>");
            }
            System.out.println("</table>");
            System.out.println("<br><a href='index.html'>Back to Home</a>");
            System.out.println("</body></html>");
            
            rs.close(); stmt.close(); conn.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
