defmodule Main do

  def main do
    c1 = %Cliente{nombre: "Jhan", cedula: "123"}
    c2 = Cliente.crear("Laura", "456")
    c3 = Cliente.crear("Ana", "789")
    Cliente.escrbir_csv([c1, c2, c3], "clientes.csv")
    IO.puts("Archivo creado")

    

    p1 = %Producto{nombre: "Arroz", precio: 3000.0}
    p2 = %Producto{nombre: "Frijol", precio: 4500}
    p3 = %Producto{nombre: "Aceite", precio: 12000.0}

    d1 = %Detalle{producto: p1, cantidad: 2}
    d2 = %Detalle{producto: p2, cantidad: 1}
    d3 = %Detalle{producto: p3, cantidad: 3}
      Detalle.escribir_csv([d1, d2, d3], "detalles.csv")



    v1 = %Venta{cliente: c1, detalles: [d1, d2, d3]}

    Venta.calcular_total(v1) |> IO.inspect(label: "Total Venta")

  end
end

Main.main()
