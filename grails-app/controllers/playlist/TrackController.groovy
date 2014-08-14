package playlist



class TrackController {   
    
    def index(String artist, String genre, String howmany, String frame) { 
        howmany = howmany == "All" ? howmany : params.int('howmany', 10)
        def tracks
        if (artist) {
            tracks = TrackArtist.findAllByArtist(artist)
        } else if (genre) {
            tracks = TrackGenre.findAllByGenre(genre, howmany == "All" ? [] : [max: howmany])
        }                
        [tracks: tracks, howmany: howmany]
    }
    
    def star(String artist, String track, String trackId, String genre, String howmany, String star) {
        if (star) {
            def starTrack = Track.get(star)
            if (starTrack) {
                def t = TrackArtist.get([artist: starTrack.artist, track: starTrack.track, trackId: starTrack.trackId])
                t?.starred = true
                t?.save()
                
                t = TrackGenre.get([genre: starTrack.genre, artist: starTrack.artist, track: starTrack.track])
                t?.starred = true
                t?.save(flush:true)
            }            
        }
        redirect(action: 'index', params: [artist:artist, genre:genre, howmany: howmany])
    }
    
    def create() {
        respond new Track(params)    
    }
    
    def save(Track track) {
        if (track == null) {
            notFound()
            return
        }
        track.trackId = UUID.randomUUID()
        
        track.validate()
        
        if (track.hasErrors()) {
            respond track.errors, view:'create'
            return
        }
        
        new ArtistFirstLetter(firstLetter: track.artist.substring(0, 1).toUpperCase(), artist: track.artist).save(failOnError:true)   
        track.save(failOnError:true)
        new TrackGenre(track.properties).save(failOnError:true)
        new TrackArtist(track.properties).save(failOnError:true, flush:true)
        redirect(action: 'index', params: [artist:track.artist, howmany: params.howmany])
    }
}
