package playlist



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TrackArtistController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 100, 100)
        respond TrackArtist.list(params), model:[trackArtistInstanceCount: TrackArtist.count()]
    }

    def show() {
        def trackArtistInstance = new TrackArtist(params)
        trackArtistInstance = TrackArtist.get([artist: trackArtistInstance.artist, track: trackArtistInstance.track, trackId: trackArtistInstance.trackId])
        respond trackArtistInstance
    }

    def create() {
        respond new TrackArtist(params)
    }

    @Transactional
    def save(TrackArtist trackArtistInstance) {
        if (trackArtistInstance == null) {
            notFound()
            return
        }

        if (trackArtistInstance.hasErrors()) {
            respond trackArtistInstance.errors, view:'create'
            return
        }

        trackArtistInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'trackArtist.label', default: 'TrackArtist'), trackArtistInstance.id])
                redirect trackArtistInstance
            }
            '*' { respond trackArtistInstance, [status: CREATED] }
        }
    }

    def edit(TrackArtist trackArtistInstance) {
        respond trackArtistInstance
    }

    @Transactional
    def update(TrackArtist trackArtistInstance) {
        if (trackArtistInstance == null) {
            notFound()
            return
        }

        if (trackArtistInstance.hasErrors()) {
            respond trackArtistInstance.errors, view:'edit'
            return
        }

        trackArtistInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TrackArtist.label', default: 'TrackArtist'), trackArtistInstance.id])
                redirect trackArtistInstance
            }
            '*'{ respond trackArtistInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TrackArtist trackArtistInstance) {

        if (trackArtistInstance == null) {
            notFound()
            return
        }

        trackArtistInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TrackArtist.label', default: 'TrackArtist'), trackArtistInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'trackArtist.label', default: 'TrackArtist'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
