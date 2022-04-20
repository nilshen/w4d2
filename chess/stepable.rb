require 'byebug'
module Stepable

    def moves
        moves = []
        

        move_dirs.each do |dx, dy|
            pos_x, pos_y = pos
            pos_x = pos_x + dx
            pos_y = pos_y + dy
            pos = [pos_x, pos_y]
            moves << pos
        end
        moves.select { |move| board.valid_pos?(move) }.reject { |move| board[move].color == color }
    end

    def move_diffs
        raise NotImplementedError
    end

end