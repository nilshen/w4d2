module Slidable

    HORIZONTAL_DIRS = [[0,-1], [0,1], [1,0], [-1,0]]
    DIAGONAL_DIRS = [[-1, 1], [1,1], [1,-1], [-1,-1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
    moves = []
        move_dirs.each do |dx, dy| 
            moves += grow_unblocked_moves_in_dir(dx, dy)
        end
    end



    def move_dirs
        raise 'error'
    end

    
    
    
    def grow_unblocked_moves_in_dir(dx, dy)
        pos_x, pos_y = pos
        moves = []
        while valid_pos?(pos)
            pos_x = pos_x + dx
            pos_y = pos_y + dy
            pos = [pos_x, pos_y]
            moves << pos
        end
        moves
    end

end