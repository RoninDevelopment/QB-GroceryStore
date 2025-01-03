local QBCore = exports['qb-core']:GetCoreObject()

local GroceryItems = {
    {name = 'bread', label = 'Bread', price = 5},
    {name = 'water', label = 'Water Bottle', price = 3},
    {name = 'milk', label = 'Milk', price = 4},
    {name = 'apple', label = 'Apple', price = 2},
}

-- Add Box Zone for Grocery Store
CreateThread(function()
    exports['qb-target']:AddBoxZone('grocery_store', vector3(373.875, 325.896, 103.566), 2.0, 2.0, {
        name = 'grocery_store',
        heading = 0,
        debugPoly = false,
        minZ = 102.566,
        maxZ = 104.566,
    }, {
        options = {
            {
                type = 'client',
                event = 'grocery:openShop',
                icon = 'fas fa-shopping-cart',
                label = 'Open Grocery Store',
            },
        },
        distance = 2.5,
    })
end)

-- Event to Open Grocery Menu
RegisterNetEvent('grocery:openShop', function()
    local items = {}
    for _, item in ipairs(GroceryItems) do
        table.insert(items, {
            header = item.label,
            txt = '$' .. item.price,
            params = {
                event = 'grocery:purchaseItem',
                args = {
                    itemName = item.name,
                    itemPrice = item.price,
                }
            }
        })
    end

    exports['qb-menu']:openMenu(items)
end)

-- Shopkeeper Ped Configuration
local ShopkeeperCoords = vector3(373.875, 325.896, 103.566)
local ShopkeeperHeading = 90.0
local ShopkeeperPed = nil

-- Spawn the Shopkeeper Ped
CreateThread(function()
    RequestModel('mp_m_shopkeep_01') -- Use single quotes for model name
    while not HasModelLoaded('mp_m_shopkeep_01') do
        Wait(0)
    end

    ShopkeeperPed = CreatePed(4, 'mp_m_shopkeep_01', ShopkeeperCoords, ShopkeeperHeading, false, true)
    SetEntityInvincible(ShopkeeperPed, true)
    FreezeEntityPosition(ShopkeeperPed, true)
    SetBlockingOfNonTemporaryEvents(ShopkeeperPed, true)

    -- Optional: Start Idle Animation
    if DoesEntityExist(ShopkeeperPed) then
        TaskStartScenarioInPlace(ShopkeeperPed, 'WORLD_HUMAN_STAND_IMPATIENT', 0, true)
    end
end)

-- Add Target Interaction for Shopkeeper Ped
exports['qb-target']:AddTargetModel('mp_m_shopkeep_01', {
    options = {
        {
            type = 'client',
            event = 'grocery:openShop',
            icon = 'fas fa-shopping-cart',
            label = 'Talk to Shopkeeper',
        },
    },
    distance = 2.5,
})
