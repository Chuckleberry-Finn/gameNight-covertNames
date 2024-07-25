local applyItemDetails = require "gameNight - applyItemDetails"
local deckActionHandler = applyItemDetails.deckActionHandler
local gamePieceAndBoardHandler = applyItemDetails.gamePieceAndBoardHandler


local words = {}
local wordsAltNames = {}
for i=1, 400 do
    local wordID = "word ("..i..")"
    table.insert(words, wordID)
    wordsAltNames[wordID] = "Covert Name Tile"
end

deckActionHandler.addDeck("CovertNamesWords", words, wordsAltNames)
gamePieceAndBoardHandler.registerSpecial("Base.CovertNamesWords", {
    actions = { examine=true },
    examineScale = 1,
    textureSize = {124,69}
})


local keyCards = {}
local keyCardsAltNames = {}
for i=1, 40 do
    local KeyCardID = "Keycard"..i
    table.insert(keyCards, KeyCardID)
    keyCardsAltNames[KeyCardID] = "Key Card"
end
deckActionHandler.addDeck("CovertNamesKeyCards", keyCards, keyCardsAltNames)
gamePieceAndBoardHandler.registerSpecial("Base.CovertNamesKeyCards", {
    actions = { examine=true },
    examineScale = 1,
    textureSize = {100,100}
})


local agents = {"Assassin"}
local agentsAltNames = {}

for i=1, 7 do table.insert(agents, "Civilian") end
local colors = {"Red","Blue"}
for _,color in pairs(colors) do
    for i=1, 4 do
        local agentID = "Agent"..color..i
        table.insert(agents, agentID)
        table.insert(agents, agentID)
        agentsAltNames[agentID] = color.." Agent"
    end
    local doubleAgentID = "Agent"..color.."Double"
    table.insert(agents, doubleAgentID)
    agentsAltNames[doubleAgentID] = color.." Double Agent"
end

deckActionHandler.addDeck("CovertNamesAgents", agents, agentsAltNames)
gamePieceAndBoardHandler.registerSpecial("Base.CovertNamesAgents", {
    actions = { examine=true },
    examineScale = 1,
    textureSize = {125,69}
})