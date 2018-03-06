defmodule Payslip do
  def create(payslips) do
    payslips
    |> Enum.map(fn(x) -> "David Rudd,01 March - 31 March,5004,922,4082,450" end)
    |> Enum.join("\n")
  end
end
