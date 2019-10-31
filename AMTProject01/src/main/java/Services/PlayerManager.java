/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Model.Player;
import Model.Team;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 *
 * @author goturak
 */
public class PlayerManager {
       Map<String,Player> players = new HashMap<String,Player>();
     
    public PlayerManager() {
        
        players.put("Goturak",new Player("Goturak","Luca",new Team("Solary")));
        players.put("Skroffox",new Player("Skroffox","Guillaume"));
        players.put("Djamax",new Player("Djamax","Maxime"));
        players.put("Kaerdhalis",new Player("Kaerdhalis","Benji"));
        players.put("Texx94",new Player("Texx94","Loris"));
        players.put("Tattalias",new Player("Tattalias","Jorge"));
        players.put("NuagePanda",new Player("NuagePanda","Claude"));
        players.put("Robinood1",new Player("Robinood1","Robin"));
    }
        
    public Player getRandomPlayer(){
        return new Player("Goturak","Luca");
    }
    
    public List<Player> getAllPLayers(){   
        return new ArrayList<Player>(players.values());
    }
    
    public Player getPlayer(String userName){
        return players.get(userName);
    }
    
    
}
