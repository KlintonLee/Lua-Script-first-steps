-- Com o Lua Script instalado, basta executar na raíz do repositório
-- lua main.lua

print("Hello World")

table = {
  key1 = 'value1'
}

table['key2'] = 'value2'
table.key3 = 'value3'

table2 = {}
table.table = table2

print(table)
print(table.table)

table = { 'valor1', 'valor2', 'valor3' }

print(table[1], table[2], table[3])

for idx in pairs(table) do
  print(idx, table[idx])
end

print('------------', #table)

for idx = 1, #table do
  print(idx, table[idx])
end

print('------------', ipairs(table))

for idx, value in ipairs(table) do
  print(idx, value)
end