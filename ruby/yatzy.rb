class Yatzy

  def initialize(d1, d2, d3, d4, d5)
    @dice = [d1, d2, d3, d4, d5]
  end

  def self.chance(d1, d2, d3, d4, d5)
    values = set_dice_array(d1, d2, d3, d4, d5)
    values.reduce(:+)
  end

  def self.yatzy(d1, d2, d3, d4, d5)
    die = [d1, d2, d3, d4, d5]
    is_yatzy = die.all? { |value| value == die[0] }
    determine_score(is_yatzy)
  end

  def self.determine_score(is_yatzy)
    if is_yatzy
      50
    else
      0
    end
  end

  def self.ones( d1,  d2,  d3,  d4,  d5)
    die = set_dice_array(d1, d2, d3, d4, d5)
    determine_score_for_number(die, 1)
  end

  def self.twos( d1,  d2,  d3,  d4,  d5)
    die = set_dice_array(d1, d2, d3, d4, d5)
    determine_score_for_number(die, 2)
  end

  def self.threes( d1,  d2,  d3,  d4,  d5)
    die = set_dice_array(d1, d2, d3, d4, d5)
    determine_score_for_number(die, 3)
  end

  def self.set_dice_array(d1, d2, d3, d4, d5)
    [d1, d2, d3, d4, d5]
  end

  def self.determine_score_for_number(die, value)
    count = die.count { |dice| dice == value }
    count * value
  end

  def fours
    determine_score_for_number(4)
  end

  def fives
    determine_score_for_number(5)
  end

  def sixes
    determine_score_for_number(6)
  end

  def determine_score_for_number(value)
    count = @dice.count { |dice| dice == value }
    count * value
  end
end
