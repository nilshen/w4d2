require_relative 'piece'



class King < Piece

    attr_reader :sym,:color, :board, :pos

    def initialize (color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos

        @sym = :K if self.color == :white 
        @sym = :k if self.color == :black 
    end


end