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

    stones = @board[start_pos]
    @board[start_pos] = []

    cup_idx = start_pos
    until stones.empty?
      cup_idx += 1
      cup_idx = 0 if cup_idx > 13
      if cup_idx == 6
        @cups[6] << stones.pop if current_player_name == @name1
      elsif cup_idx == 13
        @cups[13] << stones.pop if current_player_name == @name2
      else
        @cups[cup_idx] << stones.pop
      end
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
        if ending_cup_idx == 6 || ending_cup_idx == 13
        elsif @cups[ending_cup_idx].count == 1
        else
          ending_cup_id
        end

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups.take(6).all? { |cup| cup.empty? } ||
    @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    player1_count = @cups[6].count
    player2_count = @cups[13].count

    if player1_count == player2_count
      :draw
    else
      player1_count > player2_count ? @name1 : @name2
  end
end
