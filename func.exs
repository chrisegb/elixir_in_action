defmodule Calculadora do
  def suma(a, b) do
    a + b
  end

  def restar(a, b) do
    a - b
  end

  def multiplicar(a, b) do
    a * b
  end

  def dividir(_a, b) when b == 0 do
    :infinite
  end

  def dividir(a, b) do
    a / b
  end
end
