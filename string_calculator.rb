# frozen_string_literal: true

# The StringCalculator class is responsible for performing calculations on strings.
# It provides a method to add numbers contained in a string.
class StringCalculator
  def add(numbers)
    validate_input(numbers)
    return 0 if numbers.empty?

    nums = parse_numbers(numbers)
    handle_negatives(nums)

    nums.sum
  end

  private

  def validate_input(numbers)
    raise ArgumentError, 'Input must be a string' unless numbers.is_a?(String)
  end

  def parse_numbers(numbers)
    if numbers.start_with?('//')
      delimiter, numbers = numbers[2..].split("\n", 2)
      numbers.split(delimiter).map(&:to_i)
    else
      numbers.gsub("\n", ',').split(',').map(&:to_i)
    end
  end

  def handle_negatives(nums)
    negatives = nums.select(&:negative?)
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end
end
