defmodule Factorial do
  # Caso base: 0! = 1
  def factorial(0), do: 1

  # Control de error: si el número es negativo
  def factorial(n) when n < 0 do
    IO.puts("Error: El número no puede ser negativo")
    :error
  end

  # Caso recursivo: n! = n * (n-1)!
  def factorial(n) when n > 0 do
    n * factorial(n - 1)
  end
end


#2do ejemplo: Contador de elementos en una lista
defmodule ContadorLista do
  # Caso base: lista vacía
  def contar([]), do: 0

  # Caso recursivo: lista con al menos un elemento
  def contar([_ | tail]), do: 1 + contar(tail)
end


#3er ejemplo: Balance financiero
defmodule BalanceFinanciero do
  # Caso base: lista vacía
  def calcular_balance([]), do: 0

  # Caso recursivo: suma el primer elemento y sigue con el resto
  def calcular_balance([head | tail]), do: head + calcular_balance(tail)
end



defmodule ArbolBinario do
  # Definición de un nodo de árbol binario
  defstruct valor: nil, izquierda: nil, derecha: nil

  # Caso base: nodo nulo
  def rutas_con_suma(nil, _objetivo), do: []

  # Caso hoja: si el valor es igual al objetivo, retorna la ruta
  def rutas_con_suma(%ArbolBinario{valor: valor, izquierda: nil, derecha: nil}, objetivo) when valor == objetivo do
    [[valor]]
  end

  # Caso hoja: si el valor no es igual al objetivo, retorna lista vacía
  def rutas_con_suma(%ArbolBinario{valor: valor, izquierda: nil, derecha: nil}, _objetivo), do: []

  # Caso recursivo: sumar valor actual y buscar en hijos
  def rutas_con_suma(%ArbolBinario{valor: valor, izquierda: izq, derecha: der}, objetivo) do
    rutas_izq = rutas_con_suma(izq, objetivo - valor)
    rutas_der = rutas_con_suma(der, objetivo - valor)

    # Añadir el valor actual al inicio de cada ruta encontrada
    Enum.map(rutas_izq ++ rutas_der, fn ruta -> [valor | ruta] end)
  end
end

defmodule ArbolBinario do
  # Definición de un nodo de árbol binario
  defstruct valor: nil, izquierda: nil, derecha: nil

  # Caso base: nodo nulo
  def rutas_con_suma(nil, _objetivo), do: []

  # Caso hoja: si el valor es igual al objetivo, retorna la ruta
  def rutas_con_suma(%ArbolBinario{valor: valor, izquierda: nil, derecha: nil}, objetivo) when valor == objetivo do
    [[valor]]
  end

  # Caso hoja: si el valor no es igual al objetivo, retorna lista vacía
  def rutas_con_suma(%ArbolBinario{valor: valor, izquierda: nil, derecha: nil}, _objetivo), do: []

  # Caso recursivo: sumar valor actual y buscar en hijos
  def rutas_con_suma(%ArbolBinario{valor: valor, izquierda: izq, derecha: der}, objetivo) do
    rutas_izq = rutas_con_suma(izq, objetivo - valor)
   rutas_der = rutas_con_suma(der, objetivo - valor)

    # Añadir el valor actual al inicio de cada ruta encontrada
    Enum.map(rutas_izq ++ rutas_der, fn ruta -> [valor | ruta] end)
  end
end
