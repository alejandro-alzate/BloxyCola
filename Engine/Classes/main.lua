local Game
Game = require("Game").Game
for k, v in pairs(require("Game")) do
  print(k, v)
end
local game = Game()
return print(game)
