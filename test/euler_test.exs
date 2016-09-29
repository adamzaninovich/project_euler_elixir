defmodule EulerTest do
  use ExUnit.Case, async: true

  test "problem 1 gets the right answer" do
    assert Euler.problem_1(10) == 23
    assert Euler.problem_1(1000) == 233168
  end
end
