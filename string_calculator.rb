# frozen_string_literal: true

# The StringCalculator class is responsible for performing calculations on strings.
# It provides a method to add numbers contained in a string.
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      nums = numbers.split(delimiter).map(&:to_i)
    else
      nums = numbers.gsub("\n", ',').split(',').map(&:to_i)
    end

    negatives = nums.select(&:negative?)
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    nums.sum
  end
end
