local ips_between = require('ips-between').ips_between

it("Sample tests", function()
  assert.are.same(50, ips_between("10.0.0.0", "10.0.0.50"), 'ips_between("10.0.0.0", "10.0.0.50")')
  assert.are.same(246, ips_between("20.0.0.10", "20.0.1.0"), 'ips_between("20.0.0.10", "20.0.1.0")')
end)
