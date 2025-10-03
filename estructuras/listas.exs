defmodule main do

  def main do

    end
     def lista_ciudades() do
      ciudades = ["Lima", "Arequipa", "Cusco", "Trujillo", "Chiclayo"]
      Util.show_message("Lista de ciudades: #{Enum.join(ciudades, ", ")}")

  end
def concatenar_lista() do
  lista1 = [1, 2, 3, 4, 5]
lista2 = [6, 7, 8, 9, 10]
lista_concatenada = lista1 ++ lista2
Util.show_message("Lista concatenada: #{Enum.join(lista_concatenada, ", ")}")

  end

  def restar_lista() do
    lista1 = [1, 2, 3, 4, 5]
    lista2 = [4, 5]
    lista_resta = lista1 -- lista2
    Util.show_message("Lista despues de la resta: #{Enum.join(lista_resta, ", ")}")

  end
end
