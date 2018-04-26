class Photograph
    attr_reader :id,
                :name,
                :artist_id,
                :museum_id,
                :year
    def initialize(info)
        @id = nil_check(info)
        @name = info[:name]
        @artist_id = info[:artist_id]
        @museum_id = info[:museum_id]
        @year = info[:year]
    end

    def nil_check(info)
        if info[:id].nil?
            @id = 1
        else
            @id = info[:id]
        end
    end
end
