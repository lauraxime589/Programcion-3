defmodule main do

  def main do
    keywords_producto()
    precio_keywords()
    agregar_keywords()
    obtener_todos_keywords()

  end
  def keywords_producto() do
    list_KW = [nombre: "Papa", precio: "2000", stock: "25"]
    Util.show_message("Producto: #{list_KW[:nombre]}, Precio: #{list_KW[:precio]}, Stock: #{list_KW[:stock]}")
  end
  def precio_keywords() do
    list_KW = [nombre: "Camisa", precio: 40000, stock: 12]
    precio = list_KW[:precio]
    Util.show_message("El precio del producto es: #{precio}")
  end
  def agregar_keywords() do
    list_KW = [nombre: "Zapatos", precio: 150000]
    list_KW = Keyword.put(list_KW, :color,"Azul")
    Util.show_message("Producto actualizado: #{inspect(list_KW)}")
  end
def obtener_todos_keywords() do
  list_KW = [usuario: "Carlos", activo: "tue", rol: "admin"]
  
  Util.show_message("Todos los pares clave-valor: #{inspect(list_KW)}")
end
end
