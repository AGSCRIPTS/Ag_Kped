local QBCore = exports['qb-core']:GetCoreObject()

lib.registerContext({
  id = 'kped_menu',
  title = 'AG Admin Ped Menu',
  options = {
      {
          title = 'Staff Ped',
          description = 'Staff Side Admins Ped',
          icon = 'person',
          onSelect = function() 
            
            local alert = lib.alertDialog({
              header = 'Ped Changing Alert',
              content = 'Are You Sure \n You Want To Use This Ped',
              centered = true,
              cancel = true
          })

          Wait(100)
          ExecuteCommand('setmodel '.. Config.PedStaff)

            lib.notify({
            title = 'Ped Changed',
            showDuration = true,
            description = 'Changed To Blitz',
            position = 'top',
            style = {
              backgroundColor = '#141517',
                color = '#C1C2C5',
                ['.description'] = {
                    color = '#909296'
                }
            },
            type = 'success',
            iconColor = '#00FF00'
          }) end
      },
      {
          title = 'Head Admins Ped',
          description = 'This Is Only Head Admins Peds',
          icon = 'person',
          menu = 'head_admins_menu',
          arrow = true,
      },
      {
        title = 'Reset Ped',
        description = 'Back To Normal',
        icon = 'circle',
        arrow = false,
        onSelect = function() 
          ExecuteCommand('reloadskin')
          lib.notify({
            title = 'Ped Reset Successful',
            description = 'Successfully Changed, Back To Normal',
            type = 'success',
            style = {
              backgroundColor = '#141517',
                color = '#C1C2C5',
                ['.description'] = {
                    color = '#909296'
                }
            },
            iconColor = '#00FF00',
            position = 'top'
          })
        end
    },
  }
})

RegisterCommand('pm', function()
    local player = QBCore.Functions.GetPlayerData()
    if player.job and player.job.name == Config.AccessJob then
        lib.showContext('kped_menu')
    else
        lib.notify({
            title = 'Access Denied',
            description = 'You do not have permission to use this `kped` command.',
            type = 'error',
            style = {
                backgroundColor = '#141517',
                color = '#C1C2C5',
                ['.description'] = {
                    color = '#909296'
                }
            },
            iconColor = '#FF0000',
            position = 'top'
        })
    end
end)


lib.registerContext({
  id = 'head_admins_menu',
  title = 'Head Admins Peds',
  menu = 'hadmins_menu',
  onBack = function()
    lib.showContext('kped_menu')
  end,
  options = {
      {
          title = 'Dead Pool',
          metadata = {
              { label = '' }
          },
          icon = 'ghost',
          onSelect = function()

              local alert = lib.alertDialog({
                  header = 'Ped Changing Alert',
                  content = 'Are You Sure \n You Want To Use This Ped',
                  centered = true,
                  cancel = true,
              })
 
              Wait(100)
              ExecuteCommand('setmodel '.. Config.PedDeadpool)

              lib.notify({
                id = 'some_identifier',
                title = 'Ped Changed',
                description = 'Changed To Deadpool',
                showDuration = true,
                position = 'top',
                style = {
                    backgroundColor = '#141517',
                    color = '#C1C2C5',
                    ['.description'] = {
                        color = '#909296'
                    }
                },
                icon = '',
                type = 'success',
                iconColor = '#00FF00'
              })
          end
      },
      {
          title = 'Black Panther',
          metadata = {
              { label = '' }
          },
          icon = 'shield-cat',
          onSelect = function()
            
              local alert = lib.alertDialog({
                  header = 'Ped Changing Alert',
                  content = 'Are You Sure \n You Want To Use This Ped',
                  centered = true,
                  cancel = true,
              })

              Wait(100)
              ExecuteCommand('setmodel '.. Config.PedBlackPanther)

              lib.notify({
                  id = 'some_identifier',
                  title = 'Ped Changed',
                  description = 'Changed To Black Panther',
                  showDuration = true,
                  position = 'top',
                  style = {
                      backgroundColor = '#141517',
                      color = '#C1C2C5',
                      ['.description'] = {
                          color = '#909296'
                      }
                  },
                  icon = '',
                  type = 'success',
                  iconColor = '#00FF00'
              })
          end
      },
      {
        title = 'Iron Man',
        metadata = {
            { label = '' }
        },
        icon = 'robot',
        onSelect = function()
          
            local alert = lib.alertDialog({
                header = 'Ped Changing Alert',
                content = 'Are You Sure \n You Want To Use This Ped',
                centered = true,
                cancel = true,
            })

            Wait(100)
            ExecuteCommand('setmodel '.. Config.PedIronMan)

            lib.notify({
                id = 'some_identifier',
                title = 'Ped Changed',
                description = 'Changed To Iron Man',
                showDuration = true,
                position = 'top',
                style = {
                    backgroundColor = '#141517',
                    color = '#C1C2C5',
                    ['.description'] = {
                        color = '#909296'
                    }
                },
                icon = '',
                type = 'success',
                iconColor = '#00FF00'
            })
        end
    },
    {
      title = 'Thor',
      metadata = {
          { label = '' }
      },
      icon = 'gavel',
      onSelect = function()
        
          local alert = lib.alertDialog({
              header = 'Ped Changing Alert',
              content = 'Are You Sure \n You Want To Use This Ped',
              centered = true,
              cancel = true,
          })

          Wait(100)
          ExecuteCommand('setmodel '.. Config.PedThor)

          lib.notify({
              id = 'some_identifier',
              title = 'Ped Changed',
              description = 'Changed To Thor',
              showDuration = true,
              position = 'top',
              style = {
                  backgroundColor = '#141517',
                  color = '#C1C2C5',
                  ['.description'] = {
                      color = '#909296'
                  }
              },
              icon = '',
              type = 'success',
              iconColor = '#00FF00'
          })
      end
  },
  {
    title = 'Spider Man',
    metadata = {
        { label = '' }
    },
    icon = 'spider',
    onSelect = function()
      
        local alert = lib.alertDialog({
            header = 'Ped Changing Alert',
            content = 'Are You Sure \n You Want To Use This Ped',
            centered = true,
            cancel = true,
        })

        Wait(100)
        ExecuteCommand('setmodel '.. Config.PedSpiderman)

        lib.notify({
            id = 'some_identifier',
            title = 'Ped Changed',
            description = 'Changed To Spider Man',
            showDuration = true,
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#C1C2C5',
                ['.description'] = {
                    color = '#909296'
                }
            },
            icon = '',
            type = 'success',
            iconColor = '#00FF00'
        })
    end
   },
  }
})
