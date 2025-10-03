defmodule Main do

  def main do
    pedir_texto()
    pedir_numero()
    pedir_decimal()

  end
  def pedir_texto() do
    "ingerese su nombre: "
    |> Util.input(:string)
    |> Util.show_message()
  end
  def pedir_numero() do
   x= Util.input("Ingrese su numero", :integer)

   "El numero ingresado es entero: #{is_integer(x)}" #interpolar
   |> Util.show_menssage()
  end
  def pedrir decimal() do
    x= Util.input("Ingrese su numero decimal", :float)

    "El numero ingresado es decimal: #{is_float(x)}" #interpolar
    |> Util.show_menssage()
   end


end
Main.main()
