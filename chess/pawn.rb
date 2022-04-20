require_relative 'piece'
require 'byebug'

class Pawn < Piece
    attr_reader :sym,:color, :board, :pos

    def initialize (color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos

        @sym = :♙ if self.color == :white 
        @sym = :♟ if self.color == :black 
    end


    def moves
        move_dirs = []
        moves = []

        if self.pos[0] == 1 || self.pos[0] == 6
            move_dirs = [[1,0], [2,0]] if self.color == :white 
            move_dirs = [[-1,0], [-1,0]] if self.color == :black
        else
            move_dirs << [1, 0] if self.color == :white
            move_dirs << [-1,0] if self.color == :black
        end
        # debugger
        
        move_dirs.each do |dx, dy|
            moves << [ pos[0]+ dx, pos[1]+ dy ]
        end

        moves.reject {|pos|!board.empty?(pos) }
    end

end