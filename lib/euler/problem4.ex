defmodule Euler.Problem4 do
  @behaviour Euler

  def solve(range) do
    _min..max = range
    for x <- range,
        y <- (x..max) do
      product = x * y
      {palindrome?(product), product}
    end
    |> Stream.filter_map(&palindrome_filter/1, &product_mapper/1)
    |> Enum.max
  end

  defp palindrome?(product) do
    str = Integer.to_string(product)
    String.reverse(str) == str
  end

  defp palindrome_filter({palindrome?, _product}), do: palindrome?

  defp product_mapper({_palindrome, product}), do: product
end
