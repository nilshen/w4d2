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
        moves
    end

    def move_dirs
        raise 'error'
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        pos_x, pos_y = pos
        moves = []
        loop do
            pos_x = pos_x + dx
            pos_y = pos_y + dy
            pos = [pos_x, pos_y]

            break unless board.valid_pos?(pos)

            if board.empty?(pos)
                moves << pos
            else
                moves << pos if board[pos].color != color
                break
            end
        end
            #pos_x = pos_x + dx
            #pos_y = pos_y + dy
            #while pos_x.between?(0,7) && pos_y.between?(0,7)
            #    pos = [pos_x, pos_y]
            #    if color != board[pos].color #&& !board[pos].is_a?(NullPiece)
            #        moves << pos 
            #        break
            #    end     
            #    moves << pos 
            #    break if board[pos].color == self.color
            #end
        
        moves
    end

end

# b = Board.new
# b.move_piece([1,0],[3,3])
# b.grid[0][0].moves
# b.render