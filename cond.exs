lluvia = 100

mensaje =
  cond do
    lluvia == 0 -> "No ha llovido"
    lluvia < 30 -> "Ha llovido un poco"
    lluvia < 60 -> "Ha llovido un rato"
    lluvia < 90 -> "Ha llovido bastante"
    true -> "Madre de dios la que ha caido"
  end

IO.puts(mensaje)
