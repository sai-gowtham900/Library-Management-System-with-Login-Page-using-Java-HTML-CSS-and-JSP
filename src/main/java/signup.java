import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class signup extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");

        // Validate passwords
        if (!password.equals(confirmPassword)) {
            response.sendRedirect("signup.jsp");
            return;
        }

        // Store user data in the database
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection to the database
            String jdbcURL = "jdbc:mysql://localhost:3306/login"; // Update with your Oracle DB details
            String dbUser = "root"; // Update with your Oracle DB username
            String dbPassword = "Nalam@2208"; // Update with your Oracle DB password
            conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Create SQL query
            String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
            stmt = conn.prepareStatement(sql);

            // Set the values for the query
            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, password);

            // Execute the query
            stmt.executeUpdate();

            // Redirect to a success page
            response.sendRedirect("loginpage.jsp");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("signup.jsp");
        } finally {
            // Close the resources
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect GET requests to the signup page
        response.sendRedirect("signup.jsp");
    }
}
