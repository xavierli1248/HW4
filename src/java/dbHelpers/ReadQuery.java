package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Players;

public class ReadQuery {
    
    private Connection conn;
    private ResultSet results;
    
    public ReadQuery(){
        
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    public void doRead(){
        
        try {
            String query = "Select * from basketballplayer";
            
            PreparedStatement ps = conn.prepareStatement(query);
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String getHTMLTable(){
        
        String table = "";
        
        table += "<table>";
        
                table += "<th>";
                table += "PlayerID";
                table += "</th>";
                
                table += "<th>";
                table += "PlayerName";
                table += "</th>";
                
                table += "<th>";
                table += "Age";
                table += "</th>";
                
                table += "<th>";
                table += "Team";
                table += "</th>";
                
                table += "<th>";
                table += "JerseyNumber";
                table += "</th>";
                
                table += "<th>";
                table += "";
                table += "</th>";
        
        try {
            while(this.results.next()){
                
                Players player = new Players();
                player.setPlayerID(this.results.getInt("playerID"));
                player.setPlayerName(this.results.getString("playerName"));
                player.setAge(this.results.getInt("age"));
                player.setTeam(this.results.getString("team"));
                player.setJerseyNumber(this.results.getInt("jerseyNumber"));
                
                table += "<tr>";

                table += "<td>";
                table += player.getPlayerID();
                table += "</td>";
                
                table += "<td>";
                table += player.getPlayerName();
                table += "</td>";
                
                table += "<td>";
                table += player.getAge();
                table += "</td>";
                
                table += "<td>";
                table += player.getTeam();
                table += "</td>";
                
                table += "<td>";
                table += player.getJerseyNumber();
                table += "</td>";
                
                table += "<td>";
                table += "<a href=update?playerID=" + player.getPlayerID() + "> Update </a>" + "<a href=delete?playerID=" + player.getPlayerID() + "> Delete </a>";
                table += "</td>";
                
            table += "</tr>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        table += "</table>";
                
                return table;
    }
}
