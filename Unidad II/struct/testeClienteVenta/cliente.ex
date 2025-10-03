defmodule Cliente do
  @moduledoc """
  Módulo que define la estructura de un cliente.
  """
  defstruct nombre: "", cedula: ""

  @doc """
  Crea un nuevo cliente.
  """
  def crear(nombre, cedula) do
    %Cliente{nombre: nombre, cedula: cedula}
  end


  @doc """
  Escribe una lista de clientes en un archivo CSV.
  """
  def escribir_csv(list_clientes, nombre_archivo) do
    headers = "Nombre, Cédula \n"

      contenido =
      Enum.map(list_clientes,
      fn %Cliente{nombre: nombre, cedula: cedula} ->
        "#{nombre}, #{cedula}\n"
      end)
      |> Enum.join()

    File.write(nombre_archivo, headers <> contenido)
     # anadir [append: true] como 3er parametro para agregar al final del archivo
  end




end
