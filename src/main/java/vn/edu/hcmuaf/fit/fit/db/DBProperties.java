package vn.edu.hcmuaf.fit.fit.db;

import java.io.IOException;
import java.util.Properties;

public class DBProperties {
    private static Properties prop = new Properties();
    static {
        try {
            prop.load(DBProperties.class.getClassLoader().getResourceAsStream("properties"));

        } catch (IOException ioException) {
            ioException.printStackTrace();
        }
    }
    public static String getDBHost(){
        return prop.get("db.host").toString();
    }
    public static String getDBPort(){
        return prop.get("db.port").toString();
    }
    public static String getUsername(){
        return prop.get("db.username").toString();
    }
    public static String getPassword(){
        return prop.get("db.password").toString();
    }
    public static String getOption(){
        return prop.get("db.options").toString();
    }
    public static String getDBName(){
        return prop.get("db.databaseName").toString();
    }
}
