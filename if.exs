edad = 12

mensaje =
  if edad >= 18 do
    IO.puts("Mayor de edad")
  else
    IO.puts("Menor de edad")
    espera = 18 - edad
    IO.puts("Regresa dentro de #{espera} anios")
  end

IO.puts(mensaje)
