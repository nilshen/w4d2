require_relative 'piece'
require_relative 'stepable'

class King < Piece

    include Stepable

    attr_reader :sym, :color, :board, :pos

    def initialize (color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos

        @sym = :K if self.color == :white 
        @sym = :k if self.color == :black 
    end

    def move_dirs
        [[1,1], [1,-1], [-1,1], [-1,-1], [0,1], [1,0], [-1,0], [0,-1]]
    end

end