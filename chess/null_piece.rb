require 'singleton'
class NullPiece < Piece
    include Singleton
    attr_reader :sym,:color, :board, :pos
    
    def initialize (color = nil, board = nil, pos = nil)
        @color = color
        @board = board
        @pos = pos

        @sym = :_
     
    end

    

    
end