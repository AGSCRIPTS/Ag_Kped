lib.registerContext({
    id = 'autorevive_menu',
    title = Config.MenuTitle,
    options = {
        {
            title = 'Yes',
            description = 'Dead In Gang Situation Or Burned Situation',
            onSelect = function()

            end
        },
        {
            title = 'No',
            description = 'Dead in Random situation like Food Low',
            onSelect = function()
                TriggerServerEvent('checkEMSAvailability')
            end
        }
    }
})

RegisterCommand('revivemenu', function()
    lib.showContext('autorevive_menu')
end)

RegisterNetEvent('notifyEMSAvailability')
AddEventHandler('notifyEMSAvailability', function(isAvailable)
    local description = isAvailable and 'EMS Units Are Available'
    local iconColor = isAvailable and '#AAFF00'
    
    lib.notify({
        title = 'AG Autorevive',
        description = description,
        showDuration = true,
        position = 'top',
        style = {
            backgroundColor = '#141517',
            color = '#C1C2C5',
            ['.description'] = {
                color = '#909296'
            }
        },
        icon = 'success',
        iconColor = iconColor
    })
end)

AddEventHandler('baseevents:onPlayerDied', function()
    lib.showContext('autorevive_menu')
end)

AddEventHandler('baseevents:onPlayerKilled', function()
    lib.showContext('autorevive_menu')
end)
