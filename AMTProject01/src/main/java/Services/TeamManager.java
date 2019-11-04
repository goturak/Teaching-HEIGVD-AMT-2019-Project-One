/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Model.Team;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.sql.DataSource;

/**
 *
 * @author goturak
 */
public class TeamManager {
    
    @Resource(lookup= "jdbc/TeamEsport")
    private DataSource datasource;
    
    private Map<String,Team>teams= new HashMap<String,Team>();

    public TeamManager() {
        
        try {
      try (Connection connection = datasource.getConnection(); PreparedStatement pstmt = connection.prepareStatement("SELECT * FROM Team");) {
        //PreparedStatement pstmt = connection.prepareStatement("SELECT * FROM actor");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
          String name = rs.getString("name");
        
          teams.put(name,new Team(name));
        }
        pstmt.close();
      } 
    } catch (SQLException ex) {
      Logger.getLogger(TeamManager.class.getName()).log(Level.SEVERE, null, ex);
    }
        
        
        
        
       // teams.put("Solary",new Team("Solary"));
    }
    
    
    public List<Team> getAllTeams(){
        return new ArrayList<Team>(teams.values());
        
    }
    
    public Team getTeam(String name){
        return teams.get(name);
    }
    
}
