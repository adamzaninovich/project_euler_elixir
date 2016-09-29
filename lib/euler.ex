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

  def problem_3(n), do: max_prime_factor(n, 2)
  defp max_prime_factor(1,f),                    do: f
  defp max_prime_factor(n,f) when 0 == rem(n,f), do: max_prime_factor(div(n,f), f)
  defp max_prime_factor(n,f),                    do: max_prime_factor(n, f+1)
end
