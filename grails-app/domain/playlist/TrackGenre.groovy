package playlist

import grails.gorm.CassandraEntity

@CassandraEntity
class TrackGenre {

    UUID trackId
    String track
    String artist
    Integer trackLengthSeconds
    String genre
    String musicFile
    Boolean starred
    
    static mapping = {
        table "track_by_genre"
        id name:"genre", primaryKey:[ordinal:0, type: "partitioned"], generator:"assigned"
        artist primaryKey:[ordinal:1, type: "clustered"]
        track primaryKey:[ordinal:2, type: "clustered"]
        trackId primaryKey:[ordinal:3, type:"clustered"], column:"track_id"
        trackLengthSeconds column:"track_length_in_seconds"
        musicFile column:"music_file"
        version false
    }

    static constraints = {
        starred nullable:true
    }
}
