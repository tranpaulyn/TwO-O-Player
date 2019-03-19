class Game
    attr_accessor :p1, :p2, :start, :current_player, :check_answer, :next_player
    
    def initialize p1, p2
        @p1 = p1
        @p2 = p2
        @current_player = p1
        @next_player = p2
    end

    def change_turn
        if current_player.name == p1.name
            @current_player = p2
            @next_player = p1
            puts current_player.name
        else
            @current_player = p1
            @next_player = p2
        end
    end

    def player_answer
        print "> "
        player_answer = gets.chomp.to_i
    end

    def start
        ask_question
        check_answer
        change_turn
        check_lives
    end

    def ask_question
        puts "#{current_player.name}: #{Question.question}"
    end

    def check_answer
        if player_answer == Question.answer
            puts "#{current_player.name}: Yasss Kween"
            
        else
            puts "#{current_player.name}: Nah man!"
            next_player.lives -= 1
        end
    end

    def check_lives
        puts "P1: #{p1.lives} vs P2: #{p2.lives}"
        if p1.lives >= 1 && p2.lives >= 1
            puts "---- NEW TURN ----"
            start
        else
            puts "---- GAME OVER ----"
            if p1.lives >= 1
                puts "#{p1.name} wins with a score of #{p1.lives}/3"
            else 
                puts "#{p2.name} wins with a score of #{p2.lives}/3"
            end
            puts "Good bye!"
        end
    end
end