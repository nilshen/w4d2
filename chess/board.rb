require_relative 'piece'
require_relative 'rook'
require_relative 'knight'
require_relative 'bishop'
require_relative 'queen'
require_relative 'king'
require_relative 'pawn'

class Board
attr_reader :grid
PIECES = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
    def initialize
        @grid = Array.new(8) {Array.new(8)}
        
        PIECES.each_with_index do |piece,i|
        (0...@grid.length).each do |j|
            @grid[0][j] = PIECES[i].new('white') if i == j
        
        # (0...@grid.length).each do |i|
        #     (0...@grid.length).each do |j|
        #         if i == 0 
        #              PIECES.each do |piece|
        #                 @grid[i][j] = piece.new('white')
        #              end
        #         end
               
        #         if i == 1
        #             8.times do 
        #                 @grid[i][j] = Pawn.new('white')
        #             end
        #         end

        #         if i == 6
        #             8.times do 
        #                 @grid[i][j] = Pawn.new('black')
        #             end
        #         end

        #         if i == 7
        #             PIECES.each do |piece|
        #                piece.new('black')
        #             end
        #        end

            end
        end
    end


    def [](pos)
        @grid[pos[0]][pos[1]]
    end
 
    def []=(pos,value)
        @grid[pos[0]][pos[1]] = value
    end


    def move_piece(start_pos, end_pos)
        raise 'no piece at start_pos' if start_pos.empty?
        raise 'cant move to end_pos' if end_pos.nil?
        @grid[start_pos[0]][start_pos[1]], @grid[end_pos[0]][end_pos[1]] =  @grid[end_pos[0]][end_pos[1]],@grid[start_pos[0]][start_pos[1]]
    end

end