defmodule EulerTest do
  use ExUnit.Case, async: true

  test "problem 1 gets the right answer" do
    assert Euler.Problem1.solve(10) == 23
    assert Euler.Problem1.solve(1000) == 233168
  end

  test "problem 2 gets the right answer" do
    assert Euler.Problem2.solve(4_000_000) == 4_613_732
  end

  test "problem 3 gets the right answer" do
    assert Euler.Problem3.solve(600851475143) == 6857
  end

  test "problem 4 gets the right answer" do
    assert Euler.Problem4.solve(10..99) == 9009
    assert Euler.Problem4.solve(100..999) == 906609
  end
end
