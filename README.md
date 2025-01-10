# String Calculator TDD Kata
# String Calculator TDD Kata

## Overview

This project implements the **String Calculator** TDD Kata using **RSpec** for testing. The goal is to incrementally build a calculator that can parse and sum numbers from a string input, following the TDD approach.

---

## Features

- Handles empty strings (`""` returns `0`).
- Sums up numbers separated by commas (e.g., `"1,2"` returns `3`).
- Handles an arbitrary number of numbers (e.g., `"1,2,3,4"` returns `10`).
- Supports newlines as delimiters (e.g., `"1\n2,3"` returns `6`).
- Allows custom single-character delimiters (e.g., `"//;\n1;2"` returns `3`).
- Supports multi-character delimiters (e.g., `"//[***]\n1***2***3"` returns `6`).
- Throws exceptions for negative numbers with a detailed message.
- Validates input to ensure it is a string.

---

### **Method Signature**

```ruby
def add(numbers: String) -> Integer
```

## Usage

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
