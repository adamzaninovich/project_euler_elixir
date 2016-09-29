defmodule Euler.Problem2 do
  @behaviour Euler

  def solve(limit) do
    fibonacci_stream()
    |> Stream.take_while(&(&1 < limit))
    |> Enum.sum()
    |> div(2)
  end

  defp fibonacci_stream do
    Stream.unfold({1, 1}, fn({x, y}) -> {x, {y, x + y}} end)
  end
end
