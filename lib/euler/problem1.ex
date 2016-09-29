defmodule Euler.Problem1 do
  @behaviour Euler

  def solve(limit) do
    (1..limit-1)
    |> Stream.filter(fn(num) -> 0 == rem(num, 3) or 0 == rem(num, 5) end)
    |> Enum.sum()
  end
end
