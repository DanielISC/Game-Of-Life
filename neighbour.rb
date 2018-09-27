require './zone'

class Neighbour < Zone

  def manyNeighbour
    (0...@size).each do |i|
      (0...@size).each do |j|
        x1 = ((j - 1) == -1) ? 0 : (j - 1)
        y1 = ((i - 1) == -1) ? 0 : (i - 1)
        x2 = ((j + 1) == @size) ? (@size - 1) : (j + 1)
        y2 = ((i + 1) == @size) ? (@size - 1) : (i + 1)
        @zoneNeighbour[i][j] = (@zone[i][j] == "@")  ? -1 : 0
        (y1..y2).each do |k|
          (x1..x2).each do |l|
            if @zone[k][l] == "@"
              @zoneNeighbour[i][j] += 1
            end
          end
        end
      end
    end
  end

end
