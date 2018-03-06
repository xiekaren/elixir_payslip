defmodule PayslipTest do
  use ExUnit.Case
  doctest Payslip

  test "returns pay period, gross income, income tax, net income and super" do
    assert Payslip.create(
      [
        %{"last name" => "David", "first name" => "Rudd", "annual salary" => "60050", "super rate (%)" => "9%", "payment start date" => "01 March - 31 March"},
      ]
    ) == "David Rudd,01 March - 31 March,5004,922,4082,450"
  end
end
