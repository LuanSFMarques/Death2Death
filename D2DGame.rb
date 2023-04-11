
#--------------------------------------------------------------------------------------------------------------------( Var )
    choice = 0
    death = 0
    screen = 0
    attack = ""
    cutscene = 0
    MHP = 0  #monster hp
    BHP = 0     #boss hp
    life = 100
    kills = 0
    dif = 1 #difficult
    rand_number = 0 #random number
    w_number = 0 #weapon number



#--------------------------------------------------------------------------------------------------------------------( Methods )
    def interval (seconds)
        yield
        sleep seconds
    end

    def difficult (dif)
        if dif == 1
            rand_number = rand(10)
        elsif dif == 2
            rand_number = rand(15)
        elsif dif == 3
            rand_number = rand(25)
        end
    end

#--------------------------------------------------------------------------------------------------------------------( Weapons )

    class Weapon
        attr_accessor :name, :dmg, :crit
        def initialize (name, dmg, crit)
            @name = name
            @dmg = dmg
            @crit = crit
        end
    end

    weapon = Array.new
    weapon[0] = Weapon.new("Wood Staff", 5, 10)
    weapon[1] = Weapon.new("Iron Staff", 8, 12)
    weapon[2] = Weapon.new("Gold Staff", 10, 15)
    weapon[3] = Weapon.new("Stapphire Staff", 10, 18)
    weapon[4] = Weapon.new("Blue Beast Crystal", 15, 20)
    weapon[5] = Weapon.new("Death's Eye", 20, 30)

#--------------------------------------------------------------------------------------------------------------------( Monsters )
    class Monster
        attr_accessor :name, :type, :weak, :hp, :dmg
        def initialize (name, type, weak, hp, dmg)
            @name = name
            @type = type
            @weak = weak  
            @hp = hp
            @dmg = dmg
        end
    end

    ##Ice type (weak to fire)##
        monster = Array.new
        monster[0] = Monster.new("Frozen Golem", "ice", "fire", 10, 10)
        monster[1] = Monster.new("Ice warrior", "ice", "fire", 10, 20)
        monster[2] = Monster.new("Chilly Homunculus", "ice", "fire", 10, 10)
        monster[3] = Monster.new("Cursed Snow Man", "ice", "fire", 10, 10)
        monster[4] = Monster.new("Frigid Demon", "ice", "fire", 10, 10)
    ##Fire type (weak to water)##
        monster[5] = Monster.new("Burnt King", "fire", "water", 10, 15)
        monster[6] = Monster.new("Lava Slime", "fire", "water", 10, 15)
        monster[7] = Monster.new("Blazing Creep", "fire", "water", 10, 15)
        monster[8] = Monster.new("Hell Servant", "fire", "water", 10, 15)
        monster[9] = Monster.new("Boiling Golem", "fire", "water", 10, 15)
    ##Water type (weak to ice)##
        monster[10] = Monster.new("Aquatic Being", "water", "ice", 10, 20)
        monster[11] = Monster.new("Kraken", "water", "ice", 10, 20)
        monster[12] = Monster.new("Blue Leviathan", "water", "ice", 10, 20)
        monster[13] = Monster.new("Brisk Breeze", "water", "ice", 10, 20)
        monster[14] = Monster.new("Sailor Zombie", "water", "ice", 10, 20)
    ##Carnal type (weak to poison)##
        monster[15] = Monster.new("Agile Corpses", "carnal", "poison", 10, 20)
        monster[16] = Monster.new("Worldly Lord", "carnal", "poison", 10, 20)
        monster[17] = Monster.new("Meat Body", "carnal", "poison", 10, 20)
        monster[18] = Monster.new("Bloody Sinner", "carnal", "poison", 10, 20)
        monster[19] = Monster.new("Greasy Mouse", "carnal", "poison", 10, 20)
    ##Cursed type (weak to carnal)##
        monster[20] = Monster.new("Apparition", "cursed", "carnal", 10, 20)
        monster[21] = Monster.new("Black ghost", "cursed", "carnal", 10, 20)
        monster[22] = Monster.new("Hideous Skull", "cursed", "carnal", 10, 20)
        monster[23] = Monster.new("Living Paintings", "cursed", "carnal", 10, 20)
        monster[24] = Monster.new("Red Eye", "cursed", "carnal", 10, 20)

#--------------------------------------------------------------------------------------------------------------------( Bosses )
    class Boss
        attr_accessor :name, :weak, :hp, :dmg
        def initialize (name, weak, hp, dmg)
            @name = name
            @weak = weak
            @hp = hp
            @dmg = dmg
        end
    end

    boss = Array.new
    boss[1] = Boss.new("Garlihn, the Wandering Warrior", "fire", 30, 10)
    boss[2] = Boss.new("Buiyo, the Dark Giant", "ice", 40, 15)
    boss[3] = Boss.new("Death", "carnal", 60, 30)

#--------------------------------------------------------------------------------------------------------------------( Game Menu )
    puts "\e[H\e[2J"
    puts("\n")
    interval 0.2 do
        puts("-----------------------------------------------------------\n\n")
    end
    interval 0.2 do 
        puts("      ========-------------------------------========")
    end
    interval 0.2 do 
        puts("      <=-_-_-_D  E  A  T  H  2  D  E  A  T  H_-_-_-=>")
    end
    interval 0.2 do 
        puts("      ========-------------------------------========")
    end
    interval 0.5 do 
        puts("      ..A game made by Luan Marques..       *In RUBY*")
        puts("\n\n")
    end
    interval 0.7 do
    end
    interval 0.1 do
        puts("-                                                         -")
    end
    interval 0.1 do
        puts("---                                                     ---")
    end
    interval 0.1 do
        puts("------______________Do you want to play?_____________------")
    end
    interval 0.1 do
        puts("    --_________________Type 1 for YES________________--")
    end
    interval 0.1 do
        puts("------_________________Type 2 for NO_________________------\n")
    end
    interval 0.1 do
        puts("---                                                     ---")
    end
    interval 0.1 do
        puts("-----------------------------------------------------------")
    end
    kills = 0
    choice = gets.chomp().to_i
    puts "\e[H\e[2J"
#--------------------------------------------------------------------------------------------------------------------( GAME GUIDE )
    if choice == 1
        puts ("---                                                       ---")
        puts ("------________Would you like to see the guide?_________------")
        puts ("++++--_________________Type 1 for YES__________________--++++")
        puts ("------_________________Type 2 for NO___________________------\n\n\n")
        choice = gets.chomp().to_i

        if choice == 1
            puts "\e[H\e[2J"
            puts("_____________________________________________")
            puts("____________Welcome to the guide_____________")
            puts("You are a relentless wizard who is on his way")
            puts("__to defeat death itself. Your walk will be__")
            puts("___full of monsters that contain explicit____")
            puts("weaknesses by the meaning of their own names,")
            puts("then you will attack them with your spells in")
            puts("__search of ending their lives before they___")
            puts("_touch you. After each encounter, enter the__")
            puts("spell element you want to use based on their_")
            puts("names._______________________________________")
            puts("_____________________________________________")
            puts("........Submit any number to continue........")
            choice = gets.chomp().to_i
            puts("_The available spells are: fire, ice, water,_")
            puts("poison and carnal. You can type in lowercase,")
            puts("_uppercase or any other modification of the__")
            puts("spoken words. To exit the battle and end the_")
            puts("_game, type: \"quit\". In total, there are 5_")
            puts("___types of monsters and they all contain____")
            puts("___weaknesses that can be exploited by you___")
            puts("_________(including bosses as well)._________")
            puts("__Hitting your enemy's weakness will inflict_")
            puts("_critical hit, otherwise minor damage will be")
            puts("__dealt. Use your intuition and... good luck_")
            puts("_____________________________________________")
            puts("........Submit any number to continue........")
            choice = gets.chomp().to_i
        end
        puts "\e[H\e[2J"
#--------------------------------------------------------------------------------------------------------------------( GAME Part1)
    while
        while kills < 10
            
            if life <= 0
                break
            end
            if attack == "quit"
                death += 1
                break
            end
            if cutscene == 0
                while screen<3
                puts "\e[H\e[2J"
                puts("-------------------===================-------------------")
                puts("-------------------Step 1 to the Death-------------------")
                puts("-------------------===================-------------------")
                sleep (0.5)
                puts "\e[H\e[2J"
                puts("-------------------XXXXXXXXXXXXXXXXXXX-------------------")
                puts("------------------=Step 1 to the Death=------------------")
                puts("-------------------XXXXXXXXXXXXXXXXXXX-------------------")
                sleep (0.5)
                screen += 1
                end
            end

            if dif == 1
                rand_number = rand(10)
            elsif dif == 2
                rand_number = rand(15)
            elsif dif == 3
                rand_number = rand(25)
            end

            MHP = monster[rand_number].hp
            while MHP > 0

                if kills == 7
                    if w_number == 0
                        w_number+=1
                    end
                elsif kills == 10
                    if w_number == 1
                        w_number+=1
                    end
                elsif kills == 16
                    if w_number == 2
                        w_number+=1
                    end
                elsif kills == 26
                    if w_number == 3
                        w_number+=1
                    end
                elsif kills == 31
                    if w_number == 4
                        w_number+=1
                    end
                end

                puts "\e[H\e[2J"
                print("--HP: " + life.to_s + "\n")
                print("--Weapon: " + weapon[w_number].name + "\n")
                print("--Dmg and DmgCrit: " + weapon[w_number].dmg.to_s + ".." + weapon[w_number].crit.to_s + "\n")
                print("--Kills: " + kills.to_s + "\n")
                print("-----------------------------Monster Name: " + monster[rand_number].name + "\n")
                print("-----------------------------Monster HP: " + MHP.to_s + "\n")
                puts("---------------------------------------------------------")
                puts("---------------------------------------------------------")
                puts("---------------------------------------------------------")
                puts("----###--------------------------------------------------")
                puts("----###--------------------------------------------------")
                puts("-----#---------------------------------------------------")
                puts("---#####--------------------------------------####-------")
                puts("-----#---------------------------------------#----#------")
                puts("-----#---------------------------------------#-##-#------")
                puts("----#-#--------------------------------------#----#------")
                puts("----#-#---------------------------------------####-------")
                attack = gets.chomp().to_s.downcase
                
                if attack == "quit"
                    break
                end
                if attack == monster[rand_number].weak
                    MHP -= weapon[w_number].crit
                elsif
                    MHP -= weapon[w_number].dmg
                end
                if MHP <= 0
                    kills += 1
                end

                if MHP > 0
                    life -= monster[rand_number].dmg
                end
                if life <= 0
                    death = 1
                    break
                end
            end     
        end          
    end
    BHP = boss[dif].hp
    puts "\e[H\e[2J"
#--------------------------------------------------------------------------------------------------------------------( GAME Part1 BOSS)
    if death == 0
        while
            while BHP > 0
                if cutscene == 0

                    puts("------------------------------------------------------------")
                    sleep(0.3)
                    puts("Danger...Danger...Danger...Danger...Danger...Danger...Danger")
                    sleep(0.3)
                    puts("Danger...Danger...Danger...Danger...Danger...Danger...Danger")
                    sleep(0.3)
                    puts("Danger...Danger...Danger...Danger...Danger...Danger...Danger")
                    sleep(0.3)
                    puts("------------------------------------------------------------")
                    sleep(1)
                    puts("'Garlihn, the Wandering Warrior' is waiting for you.........")
                    sleep(1)
                    puts("________________Type ENTER to continue_________________")
                    sleep(0.2)
                    puts("------------------------------------------------------------")
                    choice = gets.chomp()  

                end
                cutscene += 1
                puts "\e[H\e[2J"
                print("--HP: " + life.to_s + "\n")
                print("--Weapon: " + weapon[w_number].name + "\n")
                print("--Dmg and DmgCrit: " + weapon[w_number].dmg.to_s + ".." + weapon[w_number].crit.to_s + "\n")
                print("--Kills: " + kills.to_s + "\n")
                puts("-------------------------- Garlihn, the Wandering Warrior")
                puts("-----------------------------Boss HP: " + BHP.to_s)
                puts("---------------------------------------------------------")
                puts("----------------------------------------------8888-------")
                puts("----------------------------------------------8888-------")
                puts("----###----------------------------------------88--------")
                puts("----###--------------------------------~==888888888888---")
                puts("-----#-------------------------------uu-------8888-------")
                puts("---#####---------------------------uu---------8888-------")
                puts("-----#----------------------------u----------88888-------")
                puts("-----#---------------------------u----------88888888-----")
                puts("----#-#-------------------------XXX----------88----88----")
                puts("----#-#-----------------------------------##88####88##---")
                attack = gets.chomp().to_s.downcase
                if attack == "quit"
                    death = 1
                    break
                end
                if attack == boss[dif].weak
                    BHP -= weapon[w_number].crit
                elsif
                    BHP -= weapon[w_number].dmg
                end
                if BHP > 0 
                    life -= boss[dif].dmg
                end
                if life <= 0
                    death += 1
                    break
                end
            end
        end
    end
    if death == 0
        puts "\e[H\e[2J" 
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("----------------------------------------------#8K8-------")
        sleep (0.05)
        puts("----------------------------------------------K888-------")
        sleep (0.05)
        puts("----###----------------------------------------K8--------")
        sleep (0.05)
        puts("----###----------------------------------K888K8##8KK88---")
        sleep (0.05)
        puts("-----#----------------------------------------8888-------")
        sleep (0.05)
        puts("---#####--------------------------------------8#8K-------")
        sleep (0.05)
        puts("-----#---------------------------------------#8888#------")
        sleep (0.05)
        puts("-----#--------------------------------------8#8K888#-----")
        sleep (0.05)
        puts("----#-#--------------------------------------K8----88----")
        sleep (0.05)
        puts("----#-#-----------------------------------##88####88##---")
        sleep (0.3)
        puts("_________________Type ENTER to continue__________________")
        choice = gets.chomp()
        puts "\e[H\e[2J" 
        puts("____________________________________________________________")
        puts("_____Garlihn, the Wandering Warrior has been defeated...____")
        puts("____________________________________________________________")
        puts("_______________You now have a new spell: ice________________")
        puts("____________________________________________________________")
        puts("__________a new type of monster chases you: WATER___________")
        puts("____________________________________________________________")
        puts("____________________________________________________________")
        puts("____________________________________________________________")
        puts("__________________Type ENTER to continue____________________")
        puts("____________________________________________________________")
        choice = gets.chomp()
        dif = dif + 1
        BHP = boss[dif].hp
        cutscene = 0
        screen = 0
        puts "\e[H\e[2J"
#--------------------------------------------------------------------------------------------------------------------( GAME Part2)
        while
            while kills < 25
                
                if life <= 0
                    break
                end
                if attack == "quit"
                    death += 1
                    break
                end 
                if cutscene == 0
                    while screen<3
                    puts "\e[H\e[2J"
                    puts("-------------------===================-------------------")
                    puts("-------------------Step 2 to the Death-------------------")
                    puts("-------------------===================-------------------")
                    sleep (0.5)
                    puts "\e[H\e[2J"
                    puts("-------------------XXXXXXXXXXXXXXXXXXX-------------------")
                    puts("------------------=Step 2 to the Death=------------------")
                    puts("-------------------XXXXXXXXXXXXXXXXXXX-------------------")
                    sleep (0.5)
                    screen += 1
                    end
                end
        
                if dif == 3
                    rand_number = rand(10)
                elsif dif == 2
                    rand_number = rand(15)
                elsif dif == 3
                    rand_number = rand(25)
                end
    
                MHP = monster[rand_number].hp
                MHP += 5
                while MHP > 0

                    if kills == 7
                        if w_number == 0
                            w_number+=1
                        end
                    elsif kills == 10
                        if w_number == 1
                            w_number+=1
                        end
                    elsif kills == 16
                        if w_number == 2
                            w_number+=1
                        end
                    elsif kills == 26
                        if w_number == 3
                            w_number+=1
                        end
                    elsif kills == 31
                        if w_number == 4
                            w_number+=1
                        end
                    end
    
                    puts "\e[H\e[2J"
                    print("--HP: " + life.to_s + "\n")
                    print("--Weapon: " + weapon[w_number].name + "\n")
                    print("--Dmg and DmgCrit: " + weapon[w_number].dmg.to_s + ".." + weapon[w_number].crit.to_s + "\n")
                    print("--Kills: " + kills.to_s + "\n")
                    print("-----------------------------Monster Name: " + monster[rand_number].name + "\n")
                    print("-----------------------------Monster HP: " + MHP.to_s + "\n")
                    puts("---------------------------------------------------------")
                    puts("---------------------------------------------------------")
                    puts("---------------------------------------------------------")
                    puts("----###--------------------------------------------------")
                    puts("----###--------------------------------------------------")
                    puts("-----#---------------------------------------------------")
                    puts("---#####--------------------------------------####-------")
                    puts("-----#---------------------------------------#----#------")
                    puts("-----#---------------------------------------#-##-#------")
                    puts("----#-#--------------------------------------#----#------")
                    puts("----#-#---------------------------------------####-------")
                    attack = gets.chomp().to_s.downcase
                    
                    if attack == "quit"
                        death += 1
                        break
                    end    
                    if attack == monster[rand_number].weak
                        MHP -= weapon[w_number].crit
                    elsif
                        MHP -= weapon[w_number].dmg
                    end
                    if MHP <= 0
                        kills += 1
                    end
    
                    if MHP > 0
                        life -= monster[rand_number].dmg
                    end
                    if life <= 0
                        death += 1
                        break
                    end
                end     
            end

        end
    cutscene = 0
#--------------------------------------------------------------------------------------------------------------------( GAME Part2 BOSS)
    if death == 0
        puts "\e[H\e[2J"
            while
                while BHP > 0
                    if cutscene == 0
    
                        puts("------------------------------------------------------------")
                        sleep(0.3)
                        puts("Danger.!.Danger.!.Danger.!.Danger.!.Danger.!.Danger.!.Danger")
                        sleep(0.3)
                        puts("Danger.!.Danger.!.Danger.!.Danger.!.Danger.!.Danger.!.Danger")
                        sleep(0.3)
                        puts("Danger.!.Danger.!.Danger.!.Danger.!.Danger.!.Danger.!.Danger")
                        sleep(0.3)
                        puts("------------------------------------------------------------")
                        sleep(1)
                        puts("'Buiyo, the Dark Giant' is waiting for you..................")
                        sleep(1)
                        puts("________________Type ENTER to continue_________________")
                        sleep(0.2)
                        puts("------------------------------------------------------------")
                        choice = gets.chomp()  
    
                    end
                    cutscene += 1
                    puts "\e[H\e[2J"
                    print("--HP: " + life.to_s + "\n")
                    print("--Weapon: " + weapon[w_number].name + "\n")
                    print("--Dmg and DmgCrit: " + weapon[w_number].dmg.to_s + ".." + weapon[w_number].crit.to_s + "\n")
                    print("--Kills: " + kills.to_s + "\n")
                    puts("---------------------------Buiyo, the Dark Giant")
                    puts("-----------------------------Boss HP: " + BHP.to_s)
                    puts("-------------------------------------oo---ooooooooo---oo-")
                    puts("-------------------------------------oo---ooooooooo---oo-")
                    puts("-------------------------------------oo----ooooooo----oo-")
                    puts("----###------------------------------oo---ooooooooo---oo-")
                    puts("----###-----------------------------oooo--ooo---ooo--oooo")
                    puts("-----#------------------------------8888--ooo---ooo--8888")
                    puts("---#####----------------------------------ooo---ooo------")
                    puts("-----#------------------------------------ooo---ooo------")
                    puts("-----#------------------------------------ooo---ooo------")
                    puts("----#-#--------------------------------ooooo-----ooooo---")
                    puts("----#-#----------------------------####ooooo#####ooooo###")
                    attack = gets.chomp().to_s.downcase
                    if attack == "quit"
                        death = 1
                        break
                    end
                    if attack == boss[dif].weak
                        BHP -= weapon[w_number].crit
                    elsif
                        BHP -= weapon[w_number].dmg
                    end
                    if BHP > 0 
                        life -= boss[dif].dmg
                    end
                    if life <= 0
                        death += 1
                        break
                    end
                end
            end 
    end 
    dif += 1
    cutscene = 0
    if death == 0
        puts "\e[H\e[2J" 
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("---------------------------------------------------------")
        sleep (0.05)
        puts("-------------------------------------oo-------#8K----oo--")
        sleep (0.05)
        puts("-------------------------------------oo------oooooo---o--")
        sleep (0.05)
        puts("----###-------------------------------o---ooooo--oo---oo-")
        sleep (0.05)
        puts("----###-----------------------------oooo--ooo---ooo----oo")
        sleep (0.05)
        puts("-----#------------------------------88----o-----ooo--8-88")
        sleep (0.05)
        puts("---#####----------------------------------ooo---o--------")
        sleep (0.05)
        puts("-----#------------------------------------o-----ooo------")
        sleep (0.05)
        puts("-----#-------------------------------------oo---ooo------")
        sleep (0.05)
        puts("----#-#--------------------------------ooooo-----o---o---")
        sleep (0.05)
        puts("----#-#----------------------------####o###o#####ooooo###")
        sleep (0.3)
        puts("_________________Type ENTER to continue__________________")
        choice = gets.chomp()
        puts "\e[H\e[2J" 
        puts("____________________________________________________________")
        puts("_____'Buiyo, the Dark Giant' has been defeated...____")
        puts("____________________________________________________________")
        puts("_______You now have a 2 new spells: poison and carnal_______")
        puts("____________________________________________________________")
        puts("____2 new types of monster chases you: CARNAL and CURSED____")
        puts("____________________________________________________________")
        puts("____________________________________________________________")
        puts("____________________________________________________________")
        puts("__________________Type ENTER to continue____________________")
        puts("____________________________________________________________")
        choice = gets.chomp()
        cutscene = 0
        screen = 0
        puts "\e[H\e[2J"
#--------------------------------------------------------------------------------------------------------------------( GAME Part3)
        while
            while kills < 35
                
                if life <= 0
                    break
                end
                if attack == "quit"
                    death += 1
                    break
                end 
                if cutscene == 0
                    while screen<3
                    puts "\e[H\e[2J"
                    puts("-------------------===================-------------------")
                    puts("-------------------Step 3 to the Death-------------------")
                    puts("-------------------===================-------------------")
                    sleep (0.5)
                    puts "\e[H\e[2J"
                    puts("-------------------XXXXXXXXXXXXXXXXXXX-------------------")
                    puts("------------------=Step 3 to the Death=------------------")
                    puts("-------------------XXXXXXXXXXXXXXXXXXX-------------------")
                    sleep (0.5)
                    screen += 1
                    end
                end

                if dif == 1
                    rand_number = rand(10)
                elsif dif == 2
                    rand_number = rand(15)
                elsif dif == 3
                    rand_number = rand(25)
                end

                MHP = monster[rand_number].hp
                MHP += 10
                while MHP > 0

                    if kills == 25
                        if w_number == 3
                            w_number+=1
                        end
                    elsif kills == 31
                        if w_number == 4
                            w_number+=1
                        end
                    end

                    puts "\e[H\e[2J"
                    print("--HP: " + life.to_s + "\n")
                    print("--Weapon: " + weapon[w_number].name + "\n")
                    print("--Dmg and DmgCrit: " + weapon[w_number].dmg.to_s + ".." + weapon[w_number].crit.to_s + "\n")
                    print("--Kills: " + kills.to_s + "\n")
                    print("-----------------------------Monster Name: " + monster[rand_number].name + "\n")
                    print("-----------------------------Monster HP: " + MHP.to_s + "\n")
                    puts("---------------------------------------------------------")
                    puts("---------------------------------------------------------")
                    puts("---------------------------------------------------------")
                    puts("----###--------------------------------------------------")
                    puts("----###--------------------------------------------------")
                    puts("-----#---------------------------------------------------")
                    puts("---#####--------------------------------------####-------")
                    puts("-----#---------------------------------------#----#------")
                    puts("-----#---------------------------------------#-##-#------")
                    puts("----#-#--------------------------------------#----#------")
                    puts("----#-#---------------------------------------####-------")
                    attack = gets.chomp().to_s.downcase
                    
                    if attack == "quit"
                        death += 1
                        break
                    end  
                    if attack == monster[rand_number].weak
                        MHP -= weapon[w_number].crit
                    elsif
                        MHP -= weapon[w_number].dmg
                    end
                    if MHP <= 0
                        kills += 1
                    end
    
                    if MHP > 0
                        life -= monster[rand_number].dmg
                    end
                    if life <= 0
                        death += 1
                        break
                    end
                end     
            end

        end
    end
#--------------------------------------------------------------------------------------------------------------------( GAME Part3 BOSS)
        if death == 0   
            puts "\e[H\e[2J"
            BHP = boss[dif].hp
            while
                while BHP > 0
                    if cutscene == 0
                        puts "\e[H\e[2J"
                        puts("------------------------------------------------------------")
                        sleep(0.3)
                        puts("Danger!!!Danger!!!Danger!!!Danger!!!Danger!!!Danger!!!Danger")
                        sleep(0.3)
                        puts("Danger!!!Danger!!!Danger!!!Danger!!!Danger!!!Danger!!!Danger")
                        sleep(0.3)
                        puts("Danger!!!Danger!!!Danger!!!Danger!!!Danger!!!Danger!!!Danger")
                        sleep(0.3)
                        puts("------------------------------------------------------------")
                        sleep(1)
                        puts("'................DEATH' is waiting for you..................")
                        sleep(1)
                        puts("__________________Type ENTER to continue____________________")
                        sleep(0.2)
                        puts("------------------------------------------------------------")
                        choice = gets.chomp()  

                    end
                    cutscene += 1
                    puts "\e[H\e[2J"
                    print("--HP: " + life.to_s + "\n")
                    print("--Weapon: " + weapon[w_number].name + "\n")
                    print("--Dmg and DmgCrit: " + weapon[w_number].dmg.to_s + ".." + weapon[w_number].crit.to_s + "\n")
                    print("--Kills: " + kills.to_s + "\n")
                    puts("-----------------------------DEATH")
                    puts("-----------------------------Boss HP: " + BHP.to_s)
                    puts("---------------------------------------------------------")
                    puts("-------------------------------SSSSSSSS-|||--------------")
                    puts("----###----------------------SS---II----#|#--------------")
                    puts("----###----------------------S----I|||||||||||-----------")
                    puts("-----#-----------------------------I--###|###-|----------")
                    puts("---#####---------------------------I-####|####|----------")
                    puts("-----#-----------------------------I-##|||||##-----------")
                    puts("-----#-----------------------------####|###|####---------")
                    puts("----#-#----------------------------####|###|####---------")
                    puts("----#-#---------------------------####\{}###[}####--------")
                    attack = gets.chomp().to_s.downcase
                    if attack == "quit"
                        death = 1
                        break
                    end
                    if attack == boss[dif].weak
                        BHP -= weapon[w_number].crit
                    elsif
                        BHP -= weapon[w_number].dmg
                    end
                    if BHP > 0 
                        life -= boss[dif].dmg
                    end
                    if life <= 0
                        death += 1
                        break
                    end
                end
            end
        end
        if death == 0

            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------SSSSSSSS-|||------------------------------")
            puts("-------------SS---II----#|#------------------------------")
            puts("-------------S----I|||||||||||||-------------------------")
            puts("-------------------I--###|###----------------------------")
            puts("-------------------I-####|####---------------------------")
            puts("-------------------I-##|||||##---------------------------")
            puts("-------------------####|###|####-------------------------")
            puts("-------------------####|###|####-------------------------")
            puts("------------------####\{}###[}####-----------------------")
            
            sleep (1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------SSSSSSSS-|||------------------------------")
            puts("-------------SS---II----#|#------------------------------")
            puts("-------------S----I|||||||||||||-------------------------")
            puts("-------------------I--###|###----------------------------")
            puts("---------------------------------------------------------")
            puts("-------------------I-##|||||##---------------------------")
            puts("-------------------####|###|####-------------------------")
            puts("-------------------####|###|####-------------------------")
            puts("------------------####\{}###[}####-----------------------")
            
            sleep (0.8)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------SSSSSSSS-|||------------------------------")
            puts("---------------------------------------------------------")
            puts("-------------S----I|||||||||||||-------------------------")
            puts("-------------------I--###|###----------------------------")
            puts("---------------------------------------------------------")
            puts("-------------------I-##|||||##---------------------------")
            puts("-------------------####|###|####-------------------------")
            puts("---------------------------------------------------------")
            puts("------------------####\{}###[}####-----------------------")
        
            sleep (0.8)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------SSSSSSSS-|||------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("-------------------I--###|###----------------------------")
            puts("---------------------------------------------------------")
            puts("-------------------I-##|||||##---------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("------------------####\{}###[}####-----------------------")
            
            sleep (0.8)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------SSSSSSSS-|||------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("-------------------I-##|||||##---------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")

            sleep (0.8)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
       

            sleep (1)
            puts "\e[H\e[2J"
            puts("--------------------D  E  A  T  H  2  D  E  A  T  H------")
            puts("-------------------D  E  A  T  H  2  D  E  A  T  H-------")
            puts("------------------D  E  A  T  H  2  D  E  A  T  H--------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("-------D  E  A  T  H  2  D  E  A  T  H-------------------")
            puts("------D  E  A  T  H  2  D  E  A  T  H--------------------")
            puts("-----D  E  A  T  H  2  D  E  A  T  H---------------------")

            sleep (0.2)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("-------------------D  E  A  T  H  2  D  E  A  T  H-------")
            puts("------------------D  E  A  T  H  2  D  E  A  T  H--------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("-------D  E  A  T  H  2  D  E  A  T  H-------------------")
            puts("------D  E  A  T  H  2  D  E  A  T  H--------------------")
            puts("---------------------------------------------------------")
            
            sleep (0.2)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("------------------D  E  A  T  H  2  D  E  A  T  H--------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("-------D  E  A  T  H  2  D  E  A  T  H-------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            
            sleep (0.2)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")

            sleep (0.2)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")

            sleep (0.2)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")

            sleep (0.2)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            
            sleep (0.2)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            
            sleep (0.2)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")


            sleep (1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")


            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("------------------D  E  A  T  H  2  D  E  A  T  H--------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("-------D  E  A  T  H  2  D  E  A  T  H-------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")

            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("-------------------D  E  A  T  H  2  D  E  A  T  H-------")
            puts("------------------D  E  A  T  H  2  D  E  A  T  H--------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("-------D  E  A  T  H  2  D  E  A  T  H-------------------")
            puts("------D  E  A  T  H  2  D  E  A  T  H--------------------")
            puts("---------------------------------------------------------")

            sleep (0.1)
            puts "\e[H\e[2J"
            puts("--------------------D  E  A  T  H  2  D  E  A  T  H------")
            puts("-------------------D  E  A  T  H  2  D  E  A  T  H-------")
            puts("------------------D  E  A  T  H  2  D  E  A  T  H--------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("-------------D  E  A  T  H  2  D  E  A  T  H-------------")
            puts("------------D  E  A  T  H  2  D  E  A  T  H--------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("-------D  E  A  T  H  2  D  E  A  T  H-------------------")
            puts("------D  E  A  T  H  2  D  E  A  T  H--------------------")
            puts("-----D  E  A  T  H  2  D  E  A  T  H---------------------")


            sleep (0.1)
            puts "\e[H\e[2J"
            puts("--------------------D  E  A  T  H  2  D  E  A  T  H------")
            puts("-------------------D  E  A  T  H  2  D  E  A  T  H-------")
            puts("------------------D  E  A  T  H  2  D  E  A  T  H--------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("--------------D  E  A  T  H  2  D  E  A  T  H------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("-----------D  E  A  T  H  2  D  E  A  T  H---------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("-------D  E  A  T  H  2  D  E  A  T  H-------------------")
            puts("------D  E  A  T  H  2  D  E  A  T  H--------------------")
            puts("-----D  E  A  T  H  2  D  E  A  T  H---------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("--------------------D  E  A  T  H  2  D  E  A  T  H------")
            puts("-------------------D  E  A  T  H  2  D  E  A  T  H-------")
            puts("------------------D  E  A  T  H  2  D  E  A  T  H--------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------D  E  A  T  H  2  D  E  A  T  H-----------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("----------D  E  A  T  H  2  D  E  A  T  H----------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("-------D  E  A  T  H  2  D  E  A  T  H-------------------")
            puts("------D  E  A  T  H  2  D  E  A  T  H--------------------")
            puts("-----D  E  A  T  H  2  D  E  A  T  H---------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("--------------------D  E  A  T  H  2  D  E  A  T  H------")
            puts("-------------------D  E  A  T  H  2  D  E  A  T  H-------")
            puts("------------------D  E  A  T  H  2  D  E  A  T  H--------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("----------------D  E  A  T  H  2  D  E  A  T  H----------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------D  E  A  T  H  2  D  E  A  T  H-----------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("-------D  E  A  T  H  2  D  E  A  T  H-------------------")
            puts("------D  E  A  T  H  2  D  E  A  T  H--------------------")
            puts("-----D  E  A  T  H  2  D  E  A  T  H---------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("--------------------D  E  A  T  H  2  D  E  A  T  H------")
            puts("-------------------D  E  A  T  H  2  D  E  A  T  H-------")
            puts("------------------D  E  A  T  H  2  D  E  A  T  H--------")
            puts("-----------------D  E  A  T  H  2  D  E  A  T  H---------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("--------D  E  A  T  H  2  D  E  A  T  H------------------")
            puts("-------D  E  A  T  H  2  D  E  A  T  H-------------------")
            puts("------D  E  A  T  H  2  D  E  A  T  H--------------------")
            puts("-----D  E  A  T  H  2  D  E  A  T  H---------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("--------------------D  E  A  T  H  2  D  E  A  T  H------")
            puts("-------------------D  E  A  T  H  2  D  E  A  T  H-------")
            puts("------------------D  E  A  T  H  2  D  E  A  T  H--------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("-------D  E  A  T  H  2  D  E  A  T  H-------------------")
            puts("------D  E  A  T  H  2  D  E  A  T  H--------------------")
            puts("-----D  E  A  T  H  2  D  E  A  T  H---------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("--------------------D  E  A  T  H  2  D  E  A  T  H------")
            puts("-------------------D  E  A  T  H  2  D  E  A  T  H-------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("------D  E  A  T  H  2  D  E  A  T  H--------------------")
            puts("-----D  E  A  T  H  2  D  E  A  T  H---------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("--------------------D  E  A  T  H  2  D  E  A  T  H------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("-----D  E  A  T  H  2  D  E  A  T  H---------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")


            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")


        
            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")


            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")



            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")
            puts("---------------------------------------------------------")


            sleep (0.1)
            puts "\e[H\e[2J"
            puts("---------------------------------------------------------")

            puts("---------------------------------------------------------")
            puts "\e[H\e[2J"
            puts ("________________________________________________________")
            sleep (0.08)
            puts ("________________________________________________________")
            sleep (0.08)
            puts ("________________________________________________________")
            sleep (0.08) 
            puts ("__________________DEATH KNEELED TO YOU__________________")
            sleep (0.08)
            puts ("________-------------_______________-------------_______")
            sleep (0.08)
            puts ("________________________________________________________")
            sleep (0.08)
            puts ("________________________________________________________")
            sleep (0.08)
            puts ("________________________________________________________")
            sleep (0.08)
            puts ("________________________________________________________")
            sleep (0.08)
            puts ("________________________________________________________")
            sleep (0.08)
            puts ("________________________________________________________")
            sleep (0.08)
            puts ("________-------------_______________-------------_______")
            sleep (0.08)
            puts ("__________________DEATH KNEELED TO YOU__________________")
            sleep (0.08)
            puts ("________________________________________________________")
            sleep (0.08)
            puts ("________________________________________________________")
            sleep (0.08)
            puts ("_______________________ The END_________________________")
            sleep(0.10)
            puts("___________________Type ENTER to exit____________________")
            choice = gets.chomp()
            
            
            
        end

  
    end
    if death >= 1
        puts "\e[H\e[2J"
        sleep(0.08)
        puts ("_________________________________________________")
        sleep(0.08)
        puts ("_________________________________________________")
        sleep(0.08)
        puts ("_________________________________________________")
        sleep(0.08) 
        puts ("______________YOU KNEELED TO DEATH_______________")
        sleep(0.08) 
        puts ("____-------------_______________-------------____")
        sleep(0.08)
        puts ("_________________________________________________")
        sleep(0.08)
        puts ("____###___#__###________________###___#__###_____")
        sleep(0.08) 
        puts ("____#__#__#__#__#_______________#__#__#__#__#____")
        sleep(0.08)
        puts ("____#_#___#__###________________#_#___#__###_____")
        sleep(0.08)
        puts ("____#__#__#__#__________________#__#__#__#_______")
        sleep(0.08) 
        puts ("_________________________________________________")
        sleep(0.08)
        puts ("____-------------_______________-------------____")
        sleep(0.08) 
        puts ("______________YOU KNEELED TO DEATH_______________")
        sleep(0.08) 
        puts ("_________________________________________________")
        sleep(0.08)
        puts ("_________________________________________________")
        sleep(0.08)
        puts ("_________________________________________________")
        sleep(0.10)
        puts ("________________Type ENTER to exit________________")
        choice = gets.chomp()    
    end
#--------------------------------------------------------------------------------------------------------------------( GAME OVER scene )
    else
        puts "\e[H\e[2J"
        puts ("_________________________________________________")
        sleep (0.08)
        puts ("_________________________________________________")
        sleep (0.08)
        puts ("_________________________________________________")
        sleep (0.08) 
        puts ("______________YOU KNEELED TO DEATH_______________")
        sleep (0.08)
        puts ("____-------------_______________-------------____")
        sleep (0.08)
        puts ("_________________________________________________")
        sleep (0.08)
        puts ("____###___#__###________________###___#__###_____")
        sleep (0.08)
        puts ("____#__#__#__#__#_______________#__#__#__#__#____")
        sleep (0.08)
        puts ("____#_#___#__###________________#_#___#__###_____")
        sleep (0.08)
        puts ("____#__#__#__#__________________#__#__#__#_______")
        sleep (0.08)
        puts ("_________________________________________________")
        sleep (0.08)
        puts ("____-------------_______________-------------____")
        sleep (0.08)
        puts ("______________YOU KNEELED TO DEATH_______________")
        sleep (0.08)
        puts ("_________________________________________________")
        sleep (0.08)
        puts ("_________________________________________________")
        sleep (0.08)
        puts ("_________________________________________________")
        sleep(0.10)
        puts("________________Type ENTER to exit________________")
        choice = gets.chomp() 
    end



