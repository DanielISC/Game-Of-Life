require './neighbour'
class GameOfLife < Neighbour

  def initialize(size = 3, generations)
    @size = size.to_i
    @generations = generations
    doZone
  end

  def play
    while (@generations > 0) do
      signzone
      sleep 0.7
      validEvolution
      @generations -= 1
    end
  end

  def validEvolution
    manyNeighbour
    (0...@size).each do |i|
      (0...@size).each do |j|
        if @zone[i][j] == "@"
          if @zoneNeighbour[i][j] < 2 or @zoneNeighbour[i][j] > 3
            @zone[i][j] = " "
          end
        else
          if @zoneNeighbour[i][j] == 3
            @zone[i][j] = "@"
          end
        end
      end
    end
  end

end
