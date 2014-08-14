package playlist

import grails.gorm.CassandraEntity

import com.datastax.driver.core.ResultSet

@CassandraEntity
class User {

    String username
    String password
    Set<String> playlistNames

    static mapping = {
        table "users"
        id name:"username", primaryKey:[ordinal:0, type: "partitioned"], generator:"assigned"
        playlistNames column:"playlist_names"
        version false
    }

    static constraints = {
    }

    def add() {
        String insertCQL = "INSERT INTO users (username, password) values ('${username}', '${password}') IF NOT EXISTS"
        ResultSet resultSet = getCassandraTemplate().doExecute(insertCQL)
        return resultSet.one().getBool("[applied]")
    }

    def addPlaylist(String playlistName) {
        String playlistCQL =  "UPDATE users set playlist_names = playlist_names + {'${playlistName}'} WHERE username = '${username}'"
        getCassandraTemplate().doExecute(playlistCQL)
    }

    def removePlaylist(String playlistName) {
        String playlistCQL = "BEGIN BATCH " +
                "UPDATE users set playlist_names = playlist_names - {'${playlistName}'} WHERE username = '${username}' " +
                "DELETE FROM playlist_tracks WHERE username = '${username}' and playlist_name = '${playlistName}' " +
                "APPLY BATCH;"
        getCassandraTemplate().doExecute(playlistCQL)
    }
}
