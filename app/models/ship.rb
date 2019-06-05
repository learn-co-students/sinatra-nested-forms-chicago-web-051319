class Ship
  attr_accessor :name, :type, :booty
  @@all = []
  def initialize(ship_info)
    @name = ship_info[:name]
    @type = ship_info[:type]
    @booty = ship_info[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
