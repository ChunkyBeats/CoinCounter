class Fixnum
  define_method(:coin_counter) do
    change = self
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    output = ""
    until change.==(0)
      quarters = change./(25).floor
      change = change % 25
      dimes = change./(10).floor
      change = change % 10
      nickels = change./(5).floor
      change = change % 5
      pennies = change./(1)
      change = change % 1
      change
    end
    output = "" +quarters + " quarters, " + dimes + " dimes, " + nickels + "nickels, " + pennies + "pennies"
  end
end
