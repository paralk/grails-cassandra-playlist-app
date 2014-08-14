package playlist

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlaylistController {
    
    def index() {
        User user = session.user
        if (!user) {
            redirect(controller: "login")
            return
        }
        session.user = User.findByUsername(user.username)        
    }    
            
    def show(Playlist playlistInstance) {
        respond playlistInstance
    }

    def create() {
        respond new Playlist(params)
    }

    @Transactional
    def save(String playlistName) {
        if (!session.user) {
            redirect(controller: "login")
            return
        }
        session.user.addPlaylist(playlistName)
        redirect (action : "index")
    }
    
    @Transactional
    def delete(String playlistName) {

        if (!session.user) {
            redirect(controller: "login")
            return
        }

        session.user.removePlaylist(playlistName)
        redirect (action : "index")
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'playlist.label', default: 'Playlist'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
