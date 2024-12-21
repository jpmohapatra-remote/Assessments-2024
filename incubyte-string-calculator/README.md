# String Calculator TDD Kata

This repository contains a simple implementation of the **String Calculator TDD Kata** in Ruby.

## Requirements

- Create a method `add(string numbers)` that:
  - Returns `0` for an empty string.
  - Returns the number itself if the input is a single number.
  - Sums up numbers in a comma-separated string.
  - Handles newlines as delimiters.
  - Supports custom delimiters.
  - Throws an error for negative numbers.

## Setup

### Prerequisites

- **Ruby** (>= 2.7)
- **Bundler** (for managing dependencies)

### Clone the Repository

1. Clone the repository:
   ```bash
   git clone https://github.com/jpmohapatra-remote/Assessments-2024/tree/52cdc68ec78f4a5b24130b1abd11550501d3e606/incubyte-string-calculator
   cd string_calculator

2. Run program:
   ```bash
   Open ruby interactive bash by running irb
   enter below commands:
   require './string_calculator'
   calculator = StringCalculator.new
   calculator.add("1,2,3")

3. Install rspec and run spec:
   ```bash
   gem install rspec
   rspec spec/string_calculator_spec.rb
