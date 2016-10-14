package model;


public class Players {
    
    private int playerID;
    private String playerName;
    private int age;
    private String team;
    private int jerseyNumber;
    
    public Players() {
        this.playerID = 0;
        this.playerName = "";
        this.age = 0;
        this.team = "";
        this.jerseyNumber = 0;
    }
    
        public Players(int playerID, String playerName, int age, String team, int jerseyNumber) {
        this.playerID = playerID;
        this.playerName = playerName;
        this.age = age;
        this.team = team;
        this.jerseyNumber = jerseyNumber;
    }

    public int getPlayerID() {
        return playerID;
    }

    public void setPlayerID(int playerID) {
        this.playerID = playerID;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }

    public int getJerseyNumber() {
        return jerseyNumber;
    }

    public void setJerseyNumber(int jerseyNumber) {
        this.jerseyNumber = jerseyNumber;
    }

    @Override
    public String toString() {
        return "Players{" + "playerID=" + playerID + ", playerName=" + playerName + ", age=" + age + ", team=" + team + ", jerseyNumber=" + jerseyNumber + '}';
    }

    
}
