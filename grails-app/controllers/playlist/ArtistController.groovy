package playlist

import grails.web.RequestParameter

class ArtistController {

    def index(String q, @RequestParameter('order') String orderBy, String frame) {

        boolean desc = orderBy?.contentEquals("down")

        List<String> artists = null
        if (q != null && !q.isEmpty()) {
            artists = ArtistFirstLetter.createCriteria().list {
                projections { property "artist" }
                eq "firstLetter", q
                if (desc) {
                    order "artist", "desc"
                }
            }
            
        }
        [artists: artists, q: q, frame: frame]
    }
}