defmodule Detalle do
  @moduledoc """
  Módulo que define la estructura de un detalle de venta.
  """
  defstruct producto: nil, cantidad: 0

  def calcular_subtotal(%Detalle{producto: producto, cantidad: cantidad}) do
    producto.precio * cantidad
  end

  @doc """
  Crea un nuevo detalle de venta.
  """
  def crear(producto, cantidad) do
    %Detalle{producto: producto, cantidad: cantidad}
  end

  @doc """
  Escribe una lista de detalles en un archivo CSV.
  """
 def escribir_csv(list_detalles, nombre_archivo) do
  headers = "Producto, Cantidad, Subtotal\n"

  contenido =
    Enum.map(list_detalles, fn %Detalle{producto: producto, cantidad: cantidad} ->
      subtotal = calcular_subtotal(%Detalle{producto: producto, cantidad: cantidad})
      "#{producto.nombre}, #{cantidad}, #{subtotal}\n"
    end)
    |> Enum.join()

  File.write(nombre_archivo, headers <> contenido) # anadir [append: true] como 3er parametro para agregar al final del archivo
end


end


