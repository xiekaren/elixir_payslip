defmodule PayslipTest do
  use ExUnit.Case
  doctest Payslip

  test "returns pay period, gross income, income tax, net income and super" do
    Payslip.create("David,Rudd,60050,9%,01 March - 31 March") == "David Rudd,01 March - 31 March,5004,922,4082,450"
  end
end
