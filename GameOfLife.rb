class GameOfLife
  def dimencion(tamaño)
    n = 0
    tab = Array.new(tamaño){Array.new(tamaño)}
    tabVecinos = Array.new(tamaño){Array.new(tamaño)}
    for i in 0...tamaño
      for j in 0...tamaño
        tabVecinos[i][j] = 0
        n = Random.new
        if n.rand(2) == 1
          tab[i][j] = "@"
        else
          tab[i][j] = " "
        end
      end
    end
    loop do
      muestraJuego(tab, tamaño)
      sleep 0.7
      system("cls")
      evolucion(tab, tabVecinos, tamaño)
    end
  end

  def muestraJuego(tab, tamaño)
    for i in 0...tamaño
      cad = ""
      for j in 0...tamaño
        cad = cad + tab[i][j]
      end
      puts cad
    end
  end
  def evolucion(tab, tabVecinos, tamaño)
    tabVecinos = vecinos(tab, tamaño, tabVecinos)
    for i in 0...tamaño
      for j in 0...tamaño
        if tab[i][j] == "@"
            if tabVecinos[i][j] < 2 or tabVecinos[i][j] > 3
              tab[i][j] = " "
            end
        else
            if tabVecinos[i][j] == 3
              tab[i][j] = "@"
            end
        end
      end
    end
  end

  def vecinos(tab, tamaño, tabVecinos)
    for i in 0...tamaño
      for j in 0...tamaño
        x1 = j - 1
        x2 = j + 2
        y1 = i - 1
        y2 = i + 2
        if x1 == -1
          x1 = 0
        end
        if y1 == -1
          y1 = 0
        end
        if x2 > tamaño
          x2 = tamaño
        end
        if y2 > tamaño
          y2 = tamaño
        end
        if tab[i][j] == "@"
          tabVecinos[i][j] = -1
        else
          tabVecinos[i][j] = 0
        end
        for k in y1...y2
          for l in x1...x2
            if tab[k][l] == "@"
              tabVecinos[i][j] = tabVecinos[i][j] + 1
            end
          end
        end
      end
    end
    return tabVecinos
  end
end

tamaño = ""
while tamaño.to_i < 3
  puts "Dimencion del juego"
  tamaño = gets.chomp
  if tamaño.to_i < 3
    puts "Tamaño no valido"
    gets.chomp
    system("cls")
  end
end
juego = GameOfLife.new
juego.dimencion(tamaño.to_i)
