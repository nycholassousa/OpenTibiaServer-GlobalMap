function onStepIn(cid, item, position, fromPosition)
	local player = Player(cid)
	local position
	if(item.actionid > 30020 and item.actionid < 30100) then
		local townId = (item.actionid - 30020)
		doPlayerSetTown(cid, townId)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You are the newest resident of " .. getTownName(townId) .. ".")
		player:teleportTo(player:getTown():getTemplePosition())
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end

	return true
end
