# frozen_string_literal: true

# Example class demonstrating Ruby best practices
class Example
  attr_reader :name, :value

  def initialize(name, value = 0)
    @name = name
    @value = value
  end

  def greet
    "Hello, #{name}! Your value is #{value}."
  end

  def increment(amount = 1)
    @value += amount
  end
end

# Only run if executed directly
if __FILE__ == $PROGRAM_NAME
  example = Example.new('World', 42)
  puts example.greet
end
