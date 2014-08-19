package playlist


class Track {

    UUID trackId
    String track
    String artist
    Integer trackLengthSeconds
    String genre
    String musicFile

    static mapping = {
        table "track_by_id"
        id name:"trackId", primaryKey:[ordinal:0, type: "partitioned"], generator:"assigned", column:"track_id"        
        trackLengthSeconds column:"track_length_in_seconds"
        musicFile column:"music_file"
        version false
    }

    static constraints = {
    }
}
