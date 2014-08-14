package playlist

import grails.gorm.CassandraEntity

@CassandraEntity
class ArtistFirstLetter {
    
    String firstLetter
    String artist   
    
    static mapping = {
        table "artists_by_first_letter"
        id name:"firstLetter", primaryKey:[ordinal:0, type:"partitioned"], generator:"assigned", column:"first_letter"     
        artist primaryKey:[ordinal:1, type: "clustered"]     
        version false
    }
    
    static constraints = {
    }
}
