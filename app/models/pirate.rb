class Pirate
  attr_accessor :name, :weight, :height

  def initialize(pirate_info)
    @name = pirate_info[:name]
    @weight = pirate_info[:weight]
    @height = pirate_info[:height]
  end
end
