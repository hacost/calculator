defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`.
  """

  @doc """
  add two numbers

  ## Examples

      iex> Calculator.add(2,1)
      3
  """
  def add(a \\ 0,b \\ 0) do
    a+b
  end

  @doc """
  subtract two numbers

  ## Examples

      iex> Calculator.subtract(5,3)
      2
  """
  def subtract(a,b) do
    if a <= b do
      "first parameter must be equal to or greater than #{b}"
    else
      a-b
    end

  end

  @doc """
  multiply two numbers

  ## Examples

      iex> Calculator.multiply(2,2)
      4
  """
  def multiply(a,b) do
    a*b
  end

  @doc """
  divide two numbers

  ## Examples

      iex> Calculator.divide(6,4)
      1.5
  """
  def divide(a,b \\ 0) do
    unless b == 0 do
      a/b
    else
      "cannot be divided by zero"
    end
   end
end
888
