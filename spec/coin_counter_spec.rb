require('rspec')
require('coin_counter')

describe('Fixnum#.coin_counter') do
  it("will take cent amount and return the type of change") do
    expect(('79').coin_counter)to.(eq("3 quarters, 0 dimes, 0 nickels, 4 pennies"))
  end
end
