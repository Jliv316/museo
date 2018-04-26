class Photograph
    attr_reader :id,
                :name,
                :artist_id,
                :museum_id,
                :year
    def initialize(info)
        @id = info[:id]
        @name = info[:name]
        @artist_id = info[:artist_id]
        @museum_id = info[:museum_id]
        @year = info[:year]
    end
end
