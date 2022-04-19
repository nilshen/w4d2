require_relative 'piece'
require_relative 'rook'
require_relative 'knight'
require_relative 'bishop'
require_relative 'queen'
require_relative 'king'
require_relative 'pawn'
require_relative 'null_piece'

class Board
attr_reader :grid
PIECES = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
    def initialize
        @grid = Array.new(8) {Array.new(8)}
        
        PIECES.each_with_index do |piece,i|
            (0...@grid.length).each do |j|
                @grid[0][j] = PIECES[i].new(:white, self, [0,j]) if i == j
            end

            (0...@grid.length).each do |j|
                @grid[7][j] = PIECES[i].new(:black, self, [7,j]) if i == j
            end
            
            (0...@grid.length).each do |j|
                @grid[1][j] = Pawn.new(:white, self, [1,j]) if i == j
            end

            (0...@grid.length).each do |j|
                @grid[6][j] = Pawn.new(:black, self, [6,j]) if i == j
            end
        end

        (0...@grid.length).each do |i|
            (0...@grid.length).each do |j|
                if i.between?(2,5)
                    @grid[i][j] = NullPiece.instance
                end
            end
        end
    end


    def [](pos)
        @grid[pos[0]][pos[1]]
    end
 
    def []=(pos,value)
        @grid[pos[0]][pos[1]] = value
    end

    def render
        @grid.each do |row|
            puts row.join(' ')
        end
    end


    def move_piece(start_pos, end_pos)
        raise 'no piece at start_pos' if start_pos.empty?
        raise 'cant move to end_pos' if end_pos.nil?
        @grid[start_pos[0]][start_pos[1]], @grid[end_pos[0]][end_pos[1]] =  @grid[end_pos[0]][end_pos[1]],@grid[start_pos[0]][start_pos[1]]
    end

end