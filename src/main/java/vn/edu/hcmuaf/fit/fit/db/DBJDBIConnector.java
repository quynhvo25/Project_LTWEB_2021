package vn.edu.hcmuaf.fit.fit.db;


import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import static vn.edu.hcmuaf.fit.fit.db.DBProperties.*;
public class DBJDBIConnector {
    private static Jdbi jdbi;
    private static void makeConnect(){
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql//" + getDBHost() + ":"+ getDBPort()+"/"+ getDBName());
        dataSource.setUser(getUsername());
        dataSource.setPassword(getPassword());
        dataSource.setUseCompression(true);
        dataSource.setAutoReconnect(true);

        jdbi = Jdbi.create(dataSource);
    }
    private  DBJDBIConnector(){

    } public static Jdbi get(){
        if(jdbi == null) makeConnect();
        return jdbi;
    }

}
