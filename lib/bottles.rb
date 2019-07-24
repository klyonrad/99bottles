# frozen_string_literal: true

class Bottles # rubocop:disable Style/Documentation
  def verse(initial_amount)
    @amount = initial_amount

    first_line + second_line
  end

  private

  attr_accessor :amount

  def bottles
    return "#{amount} bottle" if amount == 1
    return 'no more bottles' if amount.zero?

    "#{amount} bottles"
  end

  def first_line
    "#{bottles} of beer on the wall, #{bottles} of beer.\n"
  end

  def second_line
    first_part = "Take #{taken_down} and pass it around, "

    self.amount = amount - 1
    left_on_wall = "#{bottles} of beer on the wall.\n"

    first_part + left_on_wall
  end

  def taken_down
    return 'it down' if amount == 1

    'one down'
  end
end
