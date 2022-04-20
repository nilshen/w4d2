module Stepable

    def moves
        moves = []
        pos_x, pos_y = pos

        move_dirs.each do |dx, dy|
            pos_x = pos_x + dx
            pos_y = pos_y + dy
            pos = [[pos_x], [pos_y]]
            moves << pos
        end

    end

    def move_diffs
        raise NotImplementedError
    end

end