local function foo(t, path)
  path = path or {}
  for k, v in pairs(t) do
    local newPath = {table.unpack(path), k}
    if type(v) == "table" then
      foo(v, newPath)
    else
      print(table.concat(newPath, ".") .. " = " .. tostring(v))
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)