require_relative 'piece'



class Pawn < Piece
attr_reader :sym,:color, :board, :pos

    def initialize (color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos

        @sym = :P if self.color == :white 
        @sym = :p if self.color == :black 
    end


end