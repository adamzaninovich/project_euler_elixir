defmodule EulerTest do
  use ExUnit.Case, async: true

  test "problem 1 gets the right answer" do
    assert Euler.problem_1(10) == 23
    assert Euler.problem_1(1000) == 233168
  end

  test "problem 2 gets the right answer" do
    assert Euler.problem_2(4_000_000) == 4_613_732
  end

  test "problem 3 gets the right answer" do
    assert Euler.problem_3(600851475143) == 6857
  end
end
