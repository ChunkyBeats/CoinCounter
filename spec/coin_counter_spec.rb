require('rspec')
require('coin_counter')

describe('Fixnum#.coin_counter') do
  it("will take cent amount and return the type of change") do
    expect((79).coin_counter).to(eq("3 quarters, 4 pennies"))
  end

  it("will take 81 cents and return the change due") do
    expect((81).coin_counter).to(eq("3 quarters, 1 nickels, 1 penny"))
  end
end
