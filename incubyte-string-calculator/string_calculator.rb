class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      match = numbers.match(%r{//(.+)\n(.*)})
      delimiter = Regexp.escape(match[1])
      numbers = match[2]
    end

    numbers.split(/#{delimiter}/).tap do |nums|
      negatives = nums.map(&:to_i).select(&:negative?)
      raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
    end.map(&:to_i).sum
  end
end
