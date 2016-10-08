local Utopia = require('utopia')
local _ = require('utopia-route')

local app = Utopia:new()

local db = {
  tobi = { name = 'tobi', species = 'ferret' },
  loki = { name = 'loki', species = 'ferret' },
  jane = { name = 'jane', species = 'ferret' }
}

local pets = {}

function pets.list (req, res)
  local names = {}
  local n = 0

  for key in pairs(db) do
    n = n + 1
    names[n] = key
  end

  p(names)

  res:finish('pets: ' .. table.concat(names, ', '))
end

function pets.show (req, res, nxt)
  local pet = db[req.params.name]

  if not pet then
    return nxt('cannot find that pet')
  end

  res:finish(pet.name .. ' is a ' .. pet.species)
end

app:use(_.get('/pets', pets.list))
app:use(_.get('/pets/:name', pets.show))

app:listen(3000)
print('listening on port 3000')
