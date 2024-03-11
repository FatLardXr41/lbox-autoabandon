-- autoabandon lua
-- Made by https://lmaobox.net/forum/v/profile/34545496/somefemboy5141
--          @
--      11/03/2024 
--		  11.18

local function autoabandon()
    local players = entities.FindByClass("CTFPlayer")
    local pLocal  = entities.GetLocalPlayer()
    local friendOnly = false
    
    local markedPlayers = {} -- Keep track of marked players
    
    for i, player in pairs(players) do -- get players
		if player == nil then -- if our player is nil, return
            return;
        end

		if not pLocal:IsAlive() then
			return;
		end
		if players == nil then
			return;
		end
		-- i am so fucking stupid :sob:
		
		if #players < 4 then -- if we less than 4 players, disconnect.
			client.Command("disconnect")
		end
	end
end

callbacks.Unregister("CreateMove", "AutoAbandon")
callbacks.Register("CreateMove", "AutoAbandon", autoabandon)
