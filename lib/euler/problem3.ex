defmodule Euler.Problem3 do
  @behaviour Euler

  def solve(1), do: :undefined
  def solve(n), do: max_prime_factor(n, 2)

  defp max_prime_factor(1,f),                    do: f
  defp max_prime_factor(n,f) when 0 == rem(n,f), do: max_prime_factor(div(n,f), f)
  defp max_prime_factor(n,f),                    do: max_prime_factor(n, f+1)
end
