require "Items/SuburbsDistributions"

local gameNightDistro = require "gameNight - Distributions"

gameNightDistro.gameNightBoxes["CovertNames_Box"] = {
    rolls = 1,
    items = {
        "CovertNamesWords", 9999,
        "CovertNamesAgents", 9999,
        "CovertNamesKeyCards", 9999,
    },
    junk = { rolls = 1, items = {} }, fillRand = 0,
}