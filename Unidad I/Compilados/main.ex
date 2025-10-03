defmodule Main do

  def main do
    Util.input("Ingrese su edad: ", :integer)
    |> condicion_if()
    Util.input("Ingrese su contraseña: ", :string)
    |> condicion_unless()
    Util.input("Ingrese un número: ", :integer)
    |> condicion_numero_positivo()
    Util.input("Ingrese un número para verificar si es cero: ", :integer)
    |> condicion_numero_no_cero()
    Util.input("Ingrese su nota (0 a 5): ", :float)
    |> condicion_cond()
    Util.input("Ingrese un carácter: ", :string)
    |> condicion_case()
    saldo = Util.input("Ingrese el saldo de su cuenta: ", :integer)
    monto = Util.input("Ingrese el monto a retirar: ", :integer)
    condicion_retiro(saldo, monto)
    pedido_activo = Util.input("¿Tiene un pedido activo? (true/false): ", :boolean)
    condicion_pedido_en_curso(pedido_activo)
    Util.input("Ingrese la temperatura en grados Celsius: ", :float)
    |> condicion_temperatura()
    Util.input("Ingrese el nivel del enemigo derrotado: ", :integer)
    |> condicion_puntos_por_nivel()
    Util.input("Ingrese el dividendo: ", :integer)
    |> (fn dividendo ->
      Util.input("Ingrese el divisor: ", :integer)
      |> (fn divisor -> condicion_division_segura(dividendo, divisor) end).()
    end).()
  end
#un progrma que reciba le edad de una persona y muestra si es mayoit de edade (18)
  def condicion_if(edad) do
if edad >= 17 do

   Util.show_message("La persona es mayor de edad") #Se muestra primero el mensaje verdadero

else
  Util.show_message("La persona es menor de edad")
end
  end
#En un sistema bancario, cuando un cliente realiza un retiro, el programa debe verificar si el saldo en su cuenta es suficiente:
#Si el saldo es mayor o igual al monto solicitado, el retiro se aprueba y se muestra el nuevo saldo.
#Si no, debe mostrarse “Fondos insuficientes”.
def condicion_retiro(saldo, monto) do
  if saldo >= monto do
    nuevo_saldo = saldo - monto
    Util.show_message("Retiro aprobado. Nuevo saldo: #{nuevo_saldo}")
  else
    Util.show_message("Fondos insuficientes")
  end
end

end
#un progrma que reciba una contraseña y muestre un mensaje de error a menos que seas 1234
def condicion_unless(contrasena) do
  unless (contrasena == "1234") do
    Util.show_message("Contraseña incorrecta") #Se muestra primero el mensaje falso
  else
    Util.show_message("Contraseña correcta")
  end
end
#Un programa que reciba un número e indique si es positivo.
 def condicion_numero_positivo(numero) do
    if numero > 0 do
      Util.show_message("El número es positivo")
    else
      Util.show_message("El número no es positivo")
    end
  end
#Un programa que reciba un número y muestre "El número no es cero" a menos que sea exactamente 0.
def condicion_numero_no_cero(numero) do
  unless numero == 0 do
    Util.show_message("El número no es cero")
  else
    Util.show_message("El número es cero")
  end
end
#En una aplicación de pedidos a domicilio, un repartidor solo puede iniciar una nueva entrega a menos que ya tenga una en curso:
#Si no tiene pedidos activos, el sistema le asigna el nuevo pedido.
#Si ya tiene uno, debe mostrar “No puede tomar un nuevo pedido hasta entregar el actual”.

def condicion_pedido_en_curso(tiene_pedido_activo) do
  unless tiene_pedido_activo do
    Util.show_message("Nuevo pedido asignado")
  else
    Util.show_message("No puede tomar un nuevo pedido hasta entregar el actual")
  end
end

#Un programa que reciba una nota (0 a 5) y muestre:
#"Excelente" si es mayor o igual a 4.5.
#"Aprobado" si está entre 3.0 y 4.4.
#"Reprobado" si es menor a 3.0.
def condicion_cond(nota) do
  cond do
    nota >= 4.5 ->
      Util.show_message("Excelente")

    nota >= 3.0 and nota < 4.5 ->
      Util.show_message("Aprobado")

    nota < 3.0 ->
      Util.show_message("Reprobado")

    true ->
      Util.show_message("Nota inválida")
  end
end
#Un programa que reciba la temperatura en grados Celsius y diga:
#"Frío" si es menor a 15.
#"Templado" si está entre 15 y 25.
#"Caluroso" si es mayor a 25.
def condicion_temperatura(temp) do
  cond do
    temp < 15 ->
      Util.show_message("Frío")
    temp >= 15 and temp <= 25 ->
      Util.show_message("Templado")
    temp > 25 ->
      Util.show_message("Caluroso")
    true ->
      Util.show_message("Temperatura inválida")
  end
end
#En un videojuego, un jugador gana puntos dependiendo de la dificultad del enemigo derrotado:
#Nivel menor a 3 → +10 puntos.
#Nivel entre 3 y 6 → +20 puntos.
#Nivel mayor a 6 → +50 puntos.
def condicion_puntos_por_nivel(nivel) do
  cond do
    nivel < 3 ->
      Util.show_message("+10 puntos")
    nivel >= 3 and nivel <= 6 ->
      Util.show_message("+20 puntos")
    nivel > 6 ->
      Util.show_message("+50 puntos")
    true ->
      Util.show_message("Nivel inválido")
  end
end


#Un programa que lea un carácter y muestre si es una vocal ("a", "e", "i", "o", "u") o una consonante.
def condicion_case(char) do
  case char do
    "a" -> Util.show_message("Es una vocal")
    "e" -> Util.show_message("Es una vocal")
    "i" -> Util.show_message("Es una vocal")
    "o" -> Util.show_message("Es una vocal")
    "u" -> Util.show_message("Es una vocal")
    _ -> Util.show_message("Es una consonante")
  end
end
#Escribe un programa que realice una división segura entre dos números. Si el divisor es 0, debe devolver un error.
#Si la división es exacta (sin residuo), mostrar el cociente.
#Si no es exacta, mostrar cociente y residuo.
def condicion_division_segura(dividendo, divisor) do
  case divisor do
    0 ->
      Util.show_message("Error: El divisor no puede ser cero")
    _ ->
      cociente = div(dividendo, divisor)
      residuo = rem(dividendo, divisor)
      case residuo do
        0 ->
          Util.show_message("División exacta. Cociente: #{cociente}")
        _ ->
          Util.show_message("División no exacta. Cociente: #{cociente}, Residuo: #{residuo}")
      end
  end
end



Main.main()
