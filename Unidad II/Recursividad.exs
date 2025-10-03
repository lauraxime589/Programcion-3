
defmodule Recursividad do

def main do

  metodoRecursivo()
  matryoshka_recursiva(5)
end
def matryoshka_recursiva(n) do
  if n == 0 do #Caso Base
  IO.puts("No ay mas muñecas para abrir")
else

  IO.puts("Se abrio la muñeca número #{n}")
  matryoshka_recursiva(n-1) #Llama Recursivo
  IO.puts("Se cerro la muñeca número #{n}")

  end

end
end

#EN ELIXIR

#Directa - Lineal - No de cola

defmodule Recursividad do

  def main do
    metodoRecursivo()
    matryoshka_recursiva(5)
  end
  # Implementación recursiva usando cláusulas de función
  def matryoshka_recursiva(n) when n== 0 do #Caso Base
    IO.puts("No hay más muñecas para abrir")
  end
  def matryoshka_recursiva(n) when n > 0 do #Caso Recursivo
    IO.puts("Se abrió la muñeca número #{n}")
    matryoshka_recursiva(n - 1)
    IO.puts("Se cerró la muñeca número #{n}")
  end
end
