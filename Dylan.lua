-- Script de Delta para agregar brainrots al inventario

-- Variables
local player = game.Players.LocalPlayer
local inventory = player:WaitForChild("Inventory")

-- Función para agregar brainrot al inventario
local function agregarBrainrot(brainrot)
    local brainrotClone = brainrot:Clone()
    brainrotClone.Parent = inventory
end

-- Escucha a los brainrots que se generan en el juego
game.Workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "Brainrot" then
        agregarBrainrot(descendant)
    end
end)
