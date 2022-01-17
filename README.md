# 🌘 Aprenda Lua Script em 15 minutos
Recentemente iniciei os estudos em Lua Script, alguns gigantes do mercado estão
utilizando e tem se provado um conhecimento que vale a pena. Encontrei um link
que te ajuda a aprender Lua Script em 15 minutos (inglês).

Link: http://tylerneylon.com/a/learn-lua/

## 💻 Saídas & comentários
Para imprimirmos uma informação no terminal, utilizamos a função print()
```
print("Hello World")
```

`--` - Comentário de uma linha
```
--[[
  Comentário de
  múltiplas linhas
--]]
```

## 📦 Variáveis
Para quem estiver familiarizado com o Python, é exatamente igual. Basta dar um
nome para variável e atribuir um valor a ela. Todas elas são declaradas em
escopo global, para criarmos um contexto léxico utilizamos a paralva `local`
```
num = 42
str = 'mango'
multlineStr = [[ Semelhante ao
  template strings do Javascript
]]

if 10 > 5 then
  local num2 = 10
  print(num2) -- 10
end

print(num) -- nil
```
Nota:
- Strings são imutáveis
- Todos números são do tipo double

## 🎯 Estruturas de condição
Também são parecidas com a sintaxe do Python, todavia, a condição diferente que
na maioria das linguagens utiliza `!=`, no Lua Script é `~=`.
```
if num < 42 then
  print("Menor que 42")
elseif num ~= 42 then
  print("Maior que 42")
else
  print("A resposta é 42")
end
```

## 🔁 Estruturas de repetição
Para repetição existe o while, comumente conhecido:
```
num = 1

while num < 10 do
  print(num)
  num = num + 1
end
```
Para quem estiver familiarizado com o `do-while`, no Lua script é utilizado a
palavra reservada `repeat`. Em resumo, faz o mesmo papel do `while`, mas ao menos
uma vez ele irá entrar no bloco de código.
```
num = 10

repeat
  print(num)
until num == 10
```

### 🧬 for um pouco diferente
O `for` em Lua Script pode receber dois ou três informações:
- iterador e o valor dei início
- valor a ser atingido (com o último valor inclusive)
- definimos `-1` se for decremental
```
-- Imprimindo de 0 até 10
for i = 0, 10 do
  print(i)
end

-- Imprimindo de 10 até 0
for i = 10, 0, -1 do
  print(i)
end
```

## 🕹 Funções (Entrada, Processamento, Saída)
Utilizamos a palavra reservada `function` que recebe parâmetros normalmente
entre parênteses `()`.
```
function fib(n)
  if n < 2 then return 1 end
  return fib(n - 2) + fib(n - 1)
end
```
Posso retornar mais de um valor, por exemplo:
```
function bar()
  return 2, 4, 8, 10
end
x, y = bar()
- x e y valem 2 e 4 respectivamente, os números 8 e 10 são descartados
```
Nota: Também são globas, porém, a palavra reservada `local` funciona para
funções também.