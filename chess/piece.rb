


class Piece
attr_reader :color, :board, :pos, :sym

    def initialize(color = nil, board = nil, pos = nil, sym= nil)
        @color = color
        @board = board
        @pos = pos
        @sym = sym
    end

    # def make_move
    #     move_piece(pos, board[pos].moves.sample)
    # end



end