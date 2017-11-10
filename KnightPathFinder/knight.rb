class KnightPathFinder
  
  def initialize(pos)
    @pos = pos 
    @board = Array.new(8) {Array.new(8)}
  end
  
  def valid_moves
    array_movements = [[2,1],[2,-1],[-2,1],[-2,-1],[1,2],[1,-2],[-1,2],[-1,-2]]
    array_posible_moves = array_movements.map{|move| [@pos[0]+move[0],@pos[1]+move[1]]}
    array_posible_moves.select {|pos| valid_pos?(pos)}
  end 
  
  def valid_pos?(pos)
    pos.each do |p| 
      return false if p < 0 || p > 8 
    end 
  end 
end 