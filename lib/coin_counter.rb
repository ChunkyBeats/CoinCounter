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
      if quarters.!=(0)
        output = output.concat("#{quarters} quarters")
      end
      change = change % 25
      dimes = change./(10).floor
      if dimes.!=(0)
        output = output.concat(", #{dimes} dimes")
      end
      change = change % 10
      nickels = change./(5).floor
      if nickels.!=(0)
        output = output.concat(", #{nickels} nickels")
      end
      change = change % 5
      pennies = change./(1)
      if pennies.!=(0)
        if pennies == (1)
          output = output.concat(", #{pennies} penny")
        else
          output = output.concat(", #{pennies} pennies")
        end
      end
      change = change % 1
      change
    end
    output
  end
end
