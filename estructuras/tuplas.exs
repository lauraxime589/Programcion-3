defmodule main do

def main do

definir tuplas()

end
def definir_tuplas() do

  tupla = {:ok, "hola", 2025}
  elemento2 = elem(tupla, 1)
  Util.show_message("El segundo elemento de la tupla es: #{elemento2}")
end
def modificar_tuplas() do
  tupla = {:ok, "Exitoso", 200}
  nueva_tupla = put_elem(tupla, 2, 404)
  Util.show_message("La tupla modificada es: #{inspect(nueva_tupla)}")
end
def divion_tuplas(a,b) do
  if b != 0 do
    resultado = a / b
    Util.show_message("El resultado de la división es: #{resultado}")
  else
    Util.show_message("Error: División por cero no permitida.")
  end
end
end
