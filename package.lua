return {
  name = "voronianski/utopia-heroku-example",
  version = "0.0.1",
  description = "Example HTTP server hosted on Heroku with Luvit buildpack",
  tags = { "lua", "lit", "luvit" },
  license = "MIT",
  author = { name = "Dmitri Voronianski", email = "dmitri.voronianski@gmail.com" },
  homepage = "https://github.com/voronianski/utopia-route-example",
  dependencies = {
    'voronianski/logger',
    'voronianski/cors',
    'voronianski/response-methods',
    'voronianski/utopia',
    'voronianski/utopia-route',
    'voronianski/request-query',
    'voronianski/body-parser',
    'voronianski/file-type',
  },
  files = {
    "**.lua",
    "!test*"
  }
}
