defmodule suma do

  def   suma_numeros (0) do # caso base
    suma = 0
  end

   def calcular_suma (n) when n > 0 do
   n + suma_numeros(n-1) # Llamada recursiva

  end

  def main do
    resultado = suma_numeros(5)
    IO.puts("El resultado de la suma es: #{resultado}")
  end


IO.puts("No hay mas numeros que sumar")

end
