require "pry"

class Player
    attr_accessor :name, :life_points
    
    def initialize (name_to_enter)
    @name = name_to_enter
    @life_points = 10
    end


    def show_state
        "#{@name} a #{@life_points} points de vie"
    end

    def gets_damage(attack)
        @life_points = @life_points - attack
        if @life_points <= 0
            puts "Le joueur #{@name} est moooort !!!"
        end
    end

    def attacks(player)
        puts "le joueur #{@name} attaque #{player.name}"
        damage_done = compute_damage
        player.gets_damage(damage_done)
        if player.life_points > 0
        puts "il lui inflige #{damage_done} de dommages"
        end
    end

    def compute_damage
        return rand(1..6)
    end



end
    # binding.pry

    # puts "end of file"