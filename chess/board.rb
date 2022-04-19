require_relative 'piece'
class Board
attr_reader :grid
    def initialize
        @grid = Array.new(8) {Array.new(8)}
        (0...@grid.length).each do |i|
            (0...@grid.length).each do |j|
                if i.between?(0,1)
                    @grid[i][j] = Piece.new('white')
                end
                if i.between?(2,5)
                    @grid[i][j] = Piece.new
                end
                if i.between?(6,7)
                    @grid[i][j] = Piece.new('black')
                end
            end
        end
    end

    def self.move_piece(start_pos, end_pos)
        raise 'no piece at start_pos' if start_pos.empty?
        raise 'cant move to end_pos' if end_pos.nil?
    end

end