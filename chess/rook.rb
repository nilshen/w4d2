require_relative 'piece'

class Rook < Piece

    attr_reader :sym, :color, :board, :pos

    def initialize (color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos

        @sym = :R if self.color == :white 
        @sym = :r if self.color == :black 
    end


end
