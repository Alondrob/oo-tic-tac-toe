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
        # @board = [" "," "," "," "," "," "," "," "," "] => bad code
        @board = Array.new(9, "") #this one gives an array with 9 empty elements.
    end

    def display_board #Tarric - this is the 3th test

        puts  "#{@board[0]} | #{@board[1]} | #{@board[2]}"
        puts  "------------------------------------------"
        puts  "#{@board[3]} | #{@board[4]} | #{@board[5]}"
        puts  "------------------------------------------"
        puts  "#{@board[6]} | #{@board[7]} | #{@board[8]}"

    end

    def input_to_index

    end


end

game_1 = TicTacToe.new

p game_1

p game_1.display_board(["O ", "O", "X", "O", "X", "X", "X", "O", "X"])