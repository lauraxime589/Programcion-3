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

  def leer_csv(nombre_archivo) do # Funcion para leer archivo

    case File.read(nombre_archivo) do # Case para manejar errores
      {:ok, contenido} -> # Correcta lectura
        String.split(contenido, "\n") # Separa linea por linea
        |> Enum.map(fn line -> #Recorrer cada linea
          case String.split(line, ", ") do # Separa informacion por coma
            ["Nombre", "Cedula"] -> nil # Ignorar headers
            [nombre, cedula] -> #Verificar pattern maching
              %Cliente{nombre: nombre, cedula: cedula} # Crear struct
            _ -> nil
          end
        end)
          |> Enum.filter(& &1) # Filtra nil y falsy values

      {:error, reason} -> # Error al leer
        IO.puts("Error al leer el archivo: #{reason}")
        []
    end
  end




end
