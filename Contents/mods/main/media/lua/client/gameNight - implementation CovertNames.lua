local applyItemDetails = require "gameNight - applyItemDetails"
local deckActionHandler = applyItemDetails.deckActionHandler
local gamePieceAndBoardHandler = applyItemDetails.gamePieceAndBoardHandler


local words = {}
for i=1, 400 do table.insert(words, "word ("..i..")") end
deckActionHandler.addDeck("CovertNamesWords", words)
gamePieceAndBoardHandler.registerSpecial("Base.CovertNamesWords", {
    actions = { examine=true },
    examineScale = 1,
    textureSize = {180,100}
})


local keyCards = {}
for i=1, 40 do table.insert(keyCards, "Keycard"..i) end
deckActionHandler.addDeck("CovertNamesKeyCards", keyCards)
gamePieceAndBoardHandler.registerSpecial("Base.CovertNamesKeyCards", {
    actions = { examine=true },
    examineScale = 1,
    textureSize = {100,100}
})


local agents = {"Assassin","AgentRedDouble","AgentBlueDouble"}
for i=1, 7 do table.insert(agents, "Civilian") end
local colors = {"red","blue"}

for _,color in pairs(colors) do
    for i=1, 4 do
        table.insert(agents, "Agent"..color..i)
        table.insert(agents, "Agent"..color..i)
    end
end

deckActionHandler.addDeck("CovertNamesAgents", agents)
gamePieceAndBoardHandler.registerSpecial("Base.CovertNamesAgents", {
    actions = { examine=true },
    examineScale = 1,
    textureSize = {180,100}
})