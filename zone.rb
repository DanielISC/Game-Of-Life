class Zone

  def doZone
    size = ""
    while @size < 3
      if @size < 3
        puts "Size no valid"
        gets.chomp
        system("cls")
      end
      puts "Size of zone"
      size = gets.chomp
      @size = size.to_i
    end
    n = 0
    @zone = Array.new(@size){Array.new(@size)}
    @zoneNeighbour = Array.new(@size){Array.new(@size)}
    (0...@size).each do |i|
      (0...@size).each do |j|
        @zoneNeighbour[i][j] = 0
        n = Random.new
        @zone[i][j] =  n.rand(2) == 1  ? "@" : " "
      end
    end
  end

  def signzone
    system("cls")
    (0...@size).each do |i|
      (0...@size).each { |j| print "#{@zone[i][j]}"}
      print "\n"
    end
  end

end
