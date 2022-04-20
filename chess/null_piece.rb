require 'singleton'
class NullPiece < Piece
    include Singleton

    def initialize (color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos

        @sym = :_
     
    end

    

    
end