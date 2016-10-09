  return {
    name = "voronianski/utopia-route-example",
    version = "0.0.1",
    description = "A simple description of my little package.",
    tags = { "lua", "lit", "luvit" },
    license = "MIT",
    author = { name = "Dmitri Voronianski", email = "dmitri.voronianski@gmail.com" },
    homepage = "https://github.com/voronianski/utopia-route-example",
    dependencies = {
      'voronianski/logger',
      'voronianski/cors',
      'voronianski/json-response',
      'voronianski/utopia',
      'voronianski/utopia-route',
      'voronianski/request-query',
      'voronianski/body-parser'
    },
    files = {
      "**.lua",
      "!test*"
    }
  }
