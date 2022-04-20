require_relative 'piece'



class Pawn < Piece
attr_reader :sym,:color, :board, :pos

    def initialize (color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos

        @sym = :♙ if self.color == :white 
        @sym = :♟ if self.color == :black 
    end


end