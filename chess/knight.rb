require_relative 'piece'
require_relative 'stepable'

class Knight < Piece

    include Stepable

    attr_reader :sym,:color, :board, :pos

    def initialize (color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos

        @sym = :K if self.color == :white 
        @sym = :k if self.color == :black 
    end

    def move_dirs
        [[2,1], [1,2], [-1,-2], [-2,-1], [2,-1], [-2, 1], [1,-2], [-1,2]]
    end

end