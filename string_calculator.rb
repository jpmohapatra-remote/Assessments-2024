# frozen_string_literal: true

# The StringCalculator class is responsible for performing calculations on strings.
# It provides a method to add numbers contained in a string.
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      numbers.split(delimiter).map(&:to_i).sum
    else
      numbers.gsub("\n", ',').split(',').map(&:to_i).sum
    end
  end
end
