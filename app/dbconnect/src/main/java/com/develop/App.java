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

            PreparedStatement ps = connection.prepareStatement(" select * from table_name");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String column1 = rs.getString("colum1");
                String column2 = rs.getString("colum2");

                System.out.println("カラム１:" + column1 + "  カラム2:" + column1);

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
