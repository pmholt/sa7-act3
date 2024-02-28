class Game
    ROOM_POINTS = [5, 10, 15]

    def initialize
        @total_points = 0
    end

    def start
        puts "Welcome to the Adventure Game!"
        puts "You have #{@total_points} points."
        
        loop do 
            puts "Choose a room (1-3) to enter or 'exit' to end the game:"
            input = gets.chomp.downcase

            break if input == 'exit'

            room_num = input.to_i

            if room_num.between?(1,3)
                enter_room(room_num)
            else
                puts "Invalid input! Please choose a room numbre between 1 and 3."
            end
        end

        puts "Game over! You collected a total of #{@total_points} points."
    end

    private

    def enter_room(room_number)
        points = ROOM_POINTS[room_number - 1]
        @total_points += points
        puts "You entered Room #{room_number} and earned #{points} points."
    end
end

Game.new.start