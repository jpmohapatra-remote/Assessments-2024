# frozen_string_literal: true

# The StringCalculator class is responsible for performing calculations on strings.
# It provides a method to add numbers contained in a string.
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers.to_i if numbers.match(/^\d+$/)
  end
end
