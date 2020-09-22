class Board
  attr_accessor :cups

#       12  11  10  9  8  7
# [13]                   [6]
#      0   1   2  3  4  5

#     12  11  10  9  8  7
# [store2]            [store1]
#      1   2   3  4  5  6

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @board = Array.new(14){Array.new}
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @board.each_with_index do |ele,i|
      if i != 6 && i != 13
        4.times do
          ele << :stone
        end
      end
    end
  end

  def valid_move?(start_pos)
    raises 'Invalid starting cup' if start_pos < 0 || start_pos > 12
    raises 'Starting cup is empty' if start_pos.empty?
  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
