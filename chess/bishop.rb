require_relative 'piece'



class Bishop < Piece

    attr_reader :sym,:color, :board, :pos

    def initialize (color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos

        @sym = :B if self.color == :white 
        @sym = :b if self.color == :black 

    end


end