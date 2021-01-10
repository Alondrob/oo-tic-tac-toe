require 'pry'
class TicTacToe

    WIN_COMBINATIONS = [
        [0, 1, 2], 
        [0, 3 ,6],
        [0, 4, 8],
        [1, 4, 7],
        [2, 5, 8], 
        [2, 4, 6],   
        [3, 4, 5], 
        [6, 7, 8]
    ]

        def initialize
            #@board = [" "," "," "," "," "," "," "," "," "] #=> bad code
            
            @board = Array.new(9, " ") #this one gives an array with 9 empty elements.
        end

        def display_board #Tarric - this is the 3th test
        
            puts  " #{@board[0]} | #{@board[1]} | #{@board[2]} "
            puts  "-----------"
            puts  " #{@board[3]} | #{@board[4]} | #{@board[5]} "
            puts  "-----------"
            puts  " #{@board[6]} | #{@board[7]} | #{@board[8]} "

        end

        def input_to_index(user_move)
            index = user_move.to_i - 1
            return index 
            # index = @board.index(user_move) + 1
            
        end

        def move(index, element) #going to use the insert method a.insert(2, 2.5) # [1, 2, 2.5, 3, 4]
        @board[index] = element
        return @board
        end   

        def position_taken?(index)
            if @board[index] == " "
                false
            else
                true
            end
        end

        def valid_move?(index) #  this is the code Arynn!

            # if @board[index] == " " || @board[index] != nil instead of this
         !position_taken?(index) && (0..8).include?(index)

        end

        def turn_count
           
            @board.select {|i| i != " "}.count
          #  @board.map(&:present?).count(true) the &: applies only for the map method.
          # present? => os not blank space nor nil
          # in the method above we want to count how many times the present? method returns true.

        end
    
        def current_player #we nee to count how many elements are present X and O combined
            m = @board.select {|i| i != " "}.count
            # n = @board.each {|i| i == "O"}.count
            if m.even?
                "X"
            else
                "O"
            end
        end

        def turn
            #gets to ask the number - done 
            #is   the number is valid (1-9)
            #if not valid - ask the user a new number
            #if the naumber is valid - need to change the positions in the board
            user_input = gets.chomp
            user_input = user_input.to_i
            puts user_input.class
            # until (1..9).include?(user_input) && !position_taken?(input_to_index(user_input))
            until valid_move?(user_input - 1)
                # ((input_to_index(user_input))
            # if (1..9).include? user_input
                # puts "Change the position"
                # break
                puts "Use a new number!"
                user_input = gets.chomp
                user_input = user_input.to_i          
            # # else 
               
            end
            @board[input_to_index(user_input)] = current_player 
            
            return display_board
        end

            def won?
                    arr = WIN_COMBINATIONS
                arr =  arr.each do |i|
                    if  @board[i[0]] == "X" ||  @board[i[0]] == "O"
                        if @board[i[1]] == @board[i[0]] && @board[i[2]] == @board[i[0]]
                            return i    
                        end
                    end
                end
                return false
            end
        
            def full?
                @board.all? {|i| i != " "}
            end

            def draw?
                 if won? == false && full? == true
                    true
                 else
                    false
                 end
                end

                def over?
                    if won? || draw?
                        true
                    else
                        false
                    end
                end

            def winner #not sure - must ask
                    index = []
                    index = won?
                    if index == false
                        return nil
                    else
                        if @board[index[0]] == "X"
                        return "X"
                        else
                        return "O"
                        end
                    end
            end
            
            def play 
                until over? == true
                    turn
                end
            if won? 
                puts "Congratulations #{winner}!"
            else 
                puts "Cat's Game!"
            end
        end        
        
end














  


 
# game_1 = TicTacToe.new

#  p game_1



# # p game_1.display_board

# #  game_1.display_board