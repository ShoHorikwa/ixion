package com.develop;

import java.sql.*;


/**
 * DBConnect
 * testing DbConnection class.
 */
public class App {

    public static void main(String[] args) {

        new Configuration();

        System.out.println("Connecting ..........");

        try (Connection connection = DriverManager.getConnection(Configuration.URL, Configuration.USER, Configuration.PASSWORD)) {

            PreparedStatement ps = connection.prepareStatement(" select * from experimental_db.person");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String column1 = rs.getString("name");
                String column2 = rs.getString("email");

                System.out.println("name:" + column1 + "  email:" + column2);

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
