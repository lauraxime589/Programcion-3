defmodule UtilTest do
 def input(message, :integer, :try) do
  try do
   |> input(:string)

    |> String.to_integer()
  rescue
    ArgumentError ->
      IO.puts("El valor ingresado no es un numero entero")

      message
      |> input(:integer, :try)
  end
end
end
