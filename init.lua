local Utopia = require('utopia')
local _ = require('utopia-route')
local cors = require('cors')
local logger = require('logger')
local requestQuery = require('request-query')
local jsonResponse = require('json-response')

local app = Utopia:new()

local demoAPI = _.get('/demo', function (req, res)
  res:finish('demo!')
end)
local itemsAPI = _.get('/items/:id', function (req, res)
  res:finish('Requested item with id: ' .. req.params.id)
end)
local nestedAPI = _.get('/items/:id/:foo', function (req, res)
  res:finish('id: ' .. req.params.id .. ' foo: ' .. req.params.foo)
end)
local jsonAPI = _.get('/json/:type', function (req, res)
  if req.params.type == 'array' then
    res:json({1, 2, {a = 'b'}})
  else
    res:json({json = true, foo = 'bar'})
  end
end)

app:use(logger('short'))
app:use(cors())
app:use(jsonResponse())
app:use(requestQuery)
app:use(jsonAPI)
app:use(demoAPI)
app:use(itemsAPI)
app:use(nestedAPI)
app:use(function (req, res)
  res:finish('done')
end)

app:listen(8080)
