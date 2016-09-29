defmodule Euler do
  def problem_1(limit) do
    (1..limit-1)
    |> Stream.filter(fn(num) -> 0 == rem(num, 3) or 0 == rem(num, 5) end)
    |> Enum.sum()
  end

  def problem_2(limit) do
    fibs()
    |> Stream.take_while(&(&1 < limit))
    |> Stream.filter(&(0 == rem(&1, 2)))
    |> Enum.sum()
  end
  defp fibs, do: Stream.unfold({2, 3}, fn({x, y}) -> {x, {y, x + y}} end)
end
