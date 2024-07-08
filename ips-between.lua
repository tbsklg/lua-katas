local M = {}

function M.ips_between(start, finish)
  return (as_ip_32(finish) - as_ip_32(start))
end

function as_ip_32(ip)
  return foldl(
    function(acc, x) return acc * 256 + tonumber(x) end,
    0,
    string.gmatch(ip, '[^.]+')
  )
end

function foldl(f, acc, xs)
  for x in xs do
    acc = f(acc, x)
  end
end

return M
