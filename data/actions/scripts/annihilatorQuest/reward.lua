function onUse(cid, item, frompos, item2, topos)
	local player = Player(cid)
	
	if getPlayerStorageValue(cid, Storage.Annihilator.questLog) == -1 then
		player:addExperience(100000, true)
	end
	
	if item.uid == 49111 then
		queststatus = getPlayerStorageValue(cid,Storage.Annihilator.questLog)
		if queststatus == -1 then
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a demon armor.")
			doPlayerAddItem(cid,2494,1)
			setPlayerStorageValue(cid,Storage.Annihilator.questLog,1)
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "The chest is empty.")
		end
		
	elseif item.uid == 49112 then
		
		queststatus = getPlayerStorageValue(cid,Storage.Annihilator.questLog)
		
		if queststatus == -1 then
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a magic sword.")
			doPlayerAddItem(cid,2400,1)
			setPlayerStorageValue(cid,Storage.Annihilator.questLog,1)
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "The chest is empty.")
		end
		
	elseif item.uid == 49113 then
		
		queststatus = getPlayerStorageValue(cid,Storage.Annihilator.questLog)
		
		if queststatus == -1 then
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a stonecutter axe.")
			doPlayerAddItem(cid,2431,1)
			setPlayerStorageValue(cid,Storage.Annihilator.questLog,1)
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "The chest is empty.")
		end
		
	elseif item.uid == 49114 then
		
		queststatus = getPlayerStorageValue(cid,Storage.Annihilator.questLog)
		
		if queststatus == -1 then
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a present box.")
			box = doPlayerAddItem(cid,1990,1)
			doAddContainerItem(box, 2326, 1)
			setPlayerStorageValue(cid,Storage.Annihilator.questLog,1)
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "The chest is empty.")
		end
	end
	return true
end