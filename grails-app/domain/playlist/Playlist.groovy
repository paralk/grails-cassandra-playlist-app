package playlist


class Playlist {

    String username
    String playlistName
    Date sequenceNo
    UUID trackId
    String track
    String artist
    int trackLengthSeconds
    String genre
    
    static mapping = {
        table "playlist_tracks"
        id name:"username", primaryKey:[ordinal:0, type: "partitioned"], generator:"assigned"
        playlistName primaryKey:[ordinal:1, type: "partitioned"], column:"playlist_name"
        sequenceNo primaryKey:[ordinal:2, type: "clustered"], column:"sequence_no"
        track column:"track_name"
        trackId column:"track_id"
        trackLengthSeconds column:"track_length_in_seconds"        
        version false
    }

    static constraints = {
    }
}
