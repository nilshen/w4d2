require_relative 'piece'
require_relative 'slidable'

class Bishop < Piece
    include Slidable
    
    attr_reader :sym,:color, :board, :pos

    def initialize (color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos

        @sym = :♗ if self.color == :white 
        @sym = :♝ if self.color == :black 
    end

    def move_dirs
        diagonal_dirs
    end


end