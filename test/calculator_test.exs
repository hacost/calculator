defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  test "add two numbers" do
    #prepare my test "Given"
    a=2
    b=1

    #run
    result = Calculator.add(a,b)

    #
    assert Calculator.add(a,b) == result
  end

  test "don´t send params" do
    assert Calculator.add() == 0
  end

  test "subtract two numbers" do
    a=5
    b=3

    assert Calculator.subtract(a,b) == 2
  end

  test "first number minor" do
    a=3
    b=4

    assert Calculator.subtract(a,b) == "first parameter must be equal to or greater than #{b}"
  end

  test "multiply two numbers" do
    a=2
    b=2

    assert Calculator.multiply(a,b) == 4
  end

  test "divide two numbers" do
    a=6
    b=4

    assert Calculator.divide(a,b) == 1.5
  end

  test "divided by zero" do
    a=5
    b=0

    assert Calculator.divide(a,b) == "cannot be divided by zero"
  end
end
