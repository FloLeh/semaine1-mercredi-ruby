@position = 0

def staircase(step)
  height = step
  hasht = 1
  space = height
  sp = space -1

  puts("Voici l'escalier : ")
  if @position == 10
    puts " "*space+"☿"
  else
    puts
  end
  i=0
  while i <10
    if i ==9-@position
      puts(" "*(space-1)+"☿"+"䷀"*hasht)
       hasht +=1
       space -=1
       i+=1
    else
	    puts(" "*space+"䷀"*hasht)
	    hasht += 1
	    space -= 1
      i+=1
    end
  end
end

def launch_dice
  @lancer = rand(6)+1
end

def climbing_step(nb)
  if nb == 1
    if @position>0
      @position -= 1
    end
  elsif nb > 4
      @position += 1
  end
end

def jeu
  staircase(10)
  gets
  while @position != 10
    launch_dice
    puts "-----------------------------------------------------------"
    puts "Le dé affiche #{@lancer} !"
    climbing_step(@lancer)
    puts "Vous êtes à la #{@position}e marche"
    staircase(10)
    gets
  end
  puts "Vous êtes arrivé en haut !"
end

jeu()
