class Pirate
    attr_reader :height
    attr_accessor :name, :weight

    @@all = []
    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        @@all << self
    end

    def self.all
        @@all
    end
end