package com.develop;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Properties;

public class Configuration {
    public static String URL = "";
    public static String USER = "";
    public static String PASSWORD = "";
    public Configuration()  {
        try {
            Properties properties = new Properties();
            properties.load(Files.newBufferedReader(Path.of(getClass().getClassLoader().getResource("uat.properties").getPath())));
            URL = properties.getProperty("jdbc.url");
            USER = properties.getProperty("jdbc.username");
            PASSWORD = properties.getProperty("jdbc.password");

        } catch (IOException io) {
            io.printStackTrace();
        }
    }
}
