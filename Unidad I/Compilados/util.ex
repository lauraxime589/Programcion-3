
defmodule Util do #Modulo Util
@moduledoc """
Modulo para mostrar funciones que piden info y muestran mensaje en elixir
"""

@doc """
Muestra un mensaje
"""
  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end

@doc """
Pide informacion
"""
  def pedir_informacion() do
    IO.gets("Ingrese su nombre: ")
    |> String.trim()
  end

   defmodule Util do
    def show_message(message) do
      message
      |> IO.puts()
    end
    end
    def input(message, :string) do
      message
      |> IO.gets()
      |>String.trim()

    end
    def input(message, :integer) do
      message
      |>input(:string)
      |>String.to_integer()
    end
    def input(menssage, :float) do
      message
      |>input(:string)
      |>String.to_float()
    end

# aridad: cantidad de argumentos q tiene una funcion
# clausula: cada una de las definiciones de una funcion
#guardas: condiciones que se le pueden poner a una funcion
end
