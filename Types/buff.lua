﻿-- --------------------
-- TellMeWhen
-- Originally by Nephthys of Hyjal <lieandswell@yahoo.com>

-- Other contributions by
-- Oozebull of Twisting Nether
-- Banjankri of Blackrock
-- Predeter of Proudmoore
-- Xenyr of Aszune

-- Currently maintained by
-- Cybeloras of Mal'Ganis
-- --------------------

local TMW = TMW
if not TMW then return end
local L = TMW.L

local db, UPD_INTV, EFF_THR, ClockGCD, rc, mc, pr, ab
local tonumber, strlower =
	  tonumber, strlower
local UnitAura, UnitExists =
	  UnitAura, UnitExists
local print = TMW.print
local DS = TMW.DS
local SpellTextures = TMW.SpellTextures
local strlowerCache = TMW.strlowerCache
local isNumber = setmetatable({}, {__index = function(t, i)
	local o = not not tonumber(i)
	t[i] = o
	return o
end})

local RelevantSettings = {
	Name = true,
	ShowTimer = true,
	ShowTimerText = true,
	BuffOrDebuff = true,
	ShowWhen = true,
	OnlyMine = true,
	Unit = true,
	StackMin = true,
	StackMax = true,
	StackMinEnabled = true,
	StackMaxEnabled = true,
	ShowPBar = true,
	PBarOffs = true,
	ShowCBar = true,
	CBarOffs = true,
	InvertBars = true,
	Alpha = true,
	UnAlpha = true,
	Sort = true,
	ConditionAlpha = true,
	DurationMin = true,
	DurationMax = true,
	DurationMinEnabled = true,
	DurationMaxEnabled = true,
	FakeHidden = true,
}

local Type = TMW:RegisterIconType("buff", RelevantSettings)
Type.name = L["ICONMENU_BUFFDEBUFF"]
Type.TypeChecks = {
	text = L["ICONMENU_BUFFTYPE"],
	setting = "BuffOrDebuff",
	{ value = "HELPFUL", 		text = L["ICONMENU_BUFF"], 				colorCode = "|cFF00FF00" },
	{ value = "HARMFUL", 		text = L["ICONMENU_DEBUFF"], 			colorCode = "|cFFFF0000" },
	{ value = "EITHER", 		text = L["ICONMENU_BOTH"] },
}
Type.WhenChecks = {
	text = L["ICONMENU_SHOWWHEN"],
	{ value = "alpha", 			text = L["ICONMENU_PRESENT"], 			colorCode = "|cFF00FF00" },
	{ value = "unalpha", 		text = L["ICONMENU_ABSENT"], 			colorCode = "|cFFFF0000" },
	{ value = "always", 		text = L["ICONMENU_ALWAYS"] },
}


function Type:Update()
	db = TMW.db
	UPD_INTV = db.profile.Interval
	ClockGCD = db.profile.ClockGCD
	EFF_THR = db.profile.EffThreshold
	rc = db.profile.OORColor
	mc = db.profile.OOMColor
	pr = db.profile.PRESENTColor
	ab = db.profile.ABSENTColor
end

local huge = math.huge
local function Buff_OnUpdate(icon, time)
	if icon.UpdateTimer <= time - UPD_INTV then
		icon.UpdateTimer = time
		local CndtCheck = icon.CndtCheck if CndtCheck and CndtCheck() then return end

		local Units, NameArray, NameNameArray, NameDictionary, Filter, Filterh, Sort = icon.Units, icon.NameArray, icon.NameNameArray, icon.NameDictionary, icon.Filter, icon.Filterh, icon.Sort
		local NAL = icon.NAL

		local buffName, _, iconTexture, count, dispelType, duration, expirationTime, _, _, _, id
		local d = Sort == -1 and huge or 0

		for u = 1, #Units do
			local unit = Units[u]
			if UnitExists(unit) then
				if NAL > EFF_THR then
					for z=1, 60 do --60 because i can and it breaks when there are no more buffs anyway
						local _buffName, _, _iconTexture, _count, _dispelType, _duration, _expirationTime, _, _, _, _id = UnitAura(unit, z, Filter)
						if not _buffName then
							break
						elseif NameDictionary[_id] or NameDictionary[_dispelType] or NameDictionary[strlowerCache[_buffName]] then
							if Sort then
								local _d = (_expirationTime == 0 and huge) or _expirationTime - time
								if (Sort == 1 and d < _d) or (Sort == -1 and d > _d) then
									buffName, iconTexture, count, dispelType, duration, expirationTime, id, d =
									 _buffName, _iconTexture, _count, _dispelType, _duration, _expirationTime, _id, _d
								end
							else
								buffName, iconTexture, count, dispelType, duration, expirationTime, id =
								 _buffName, _iconTexture, _count, _dispelType, _duration, _expirationTime, _id
								break
							end
						end
					end
					if Filterh and not buffName then
						for z=1, 60 do
							local _buffName, _, _iconTexture, _count, _dispelType, _duration, _expirationTime, _, _, _, _id = UnitAura(unit, z, Filterh)
							if not _buffName then
								break
							elseif NameDictionary[_id] or NameDictionary[_dispelType] or NameDictionary[strlowerCache[_buffName]] then
								if Sort then
									local _d = (_expirationTime == 0 and huge) or _expirationTime - time
									if (Sort == 1 and d < _d) or (Sort == -1 and d > _d) then
										buffName, iconTexture, count, dispelType, duration, expirationTime, id, d =
										 _buffName, _iconTexture, _count, _dispelType, _duration, _expirationTime, _id, _d
									end
								else
									buffName, iconTexture, count, dispelType, duration, expirationTime, id =
									 _buffName, _iconTexture, _count, _dispelType, _duration, _expirationTime, _id
									break
								end
							end
						end
					end
					if buffName and not Sort then
						break --  break unit loop
					end
				else
					for i = 1, NAL do
						local iName = NameArray[i]
						if DS[iName] then --Handle dispel types. Enrage wont be handled here because it will always have more auras than the efficiency threshold (max 40, there are about 120 enrages i think)
							for z=1, 60 do
								buffName, _, iconTexture, count, dispelType, duration, expirationTime, _, _, _, id = UnitAura(unit, z, Filter)
								if not buffName or dispelType == iName then
									break
								end
							end
							if Filterh and not buffName then
								for z=1, 60 do
									buffName, _, iconTexture, count, dispelType, duration, expirationTime, _, _, _, id = UnitAura(unit, z, Filterh)
									if not buffName or dispelType == iName then
										break
									end
								end
							end
						else
							buffName, _, iconTexture, count, dispelType, duration, expirationTime, _, _, _, id = UnitAura(unit, NameNameArray[i], nil, Filter)
							if Filterh and not buffName then
								buffName, _, iconTexture, count, dispelType, duration, expirationTime, _, _, _, id = UnitAura(unit, NameNameArray[i], nil, Filterh)
							end
						end
						if buffName and id ~= iName and isNumber[iName] then
							for z=1, 60 do
								buffName, _, iconTexture, count, dispelType, duration, expirationTime, _, _, _, id = UnitAura(unit, z, Filter)
								if not id or id == iName then
									break
								end
							end
							if Filterh and not id then
								for z=1, 60 do
									buffName, _, iconTexture, count, dispelType, duration, expirationTime, _, _, _, id = UnitAura(unit, z, Filterh)
									if not id or id == iName then
										break
									end
								end
							end
						end
						if buffName then
							break -- break spell loop
						end
					end
					if buffName then
						break --  break unit loop
					end
				end
			end
		end
		if buffName then
			icon:SetInfo(icon.Alpha, icon.UnAlpha ~= 0 and pr or 1, iconTexture, expirationTime - duration, duration, nil, buffName, nil, count > 1 and count)
		else
			icon:SetInfo(icon.UnAlpha, icon.Alpha ~= 0 and ab or 1, icon.FirstTexture, 0, 0, nil, icon.NameFirst)
		end
	end
end


function Type:Setup(icon, groupID, iconID)
	icon.NameFirst = TMW:GetSpellNames(icon, icon.Name, 1)
	icon.NameName = TMW:GetSpellNames(icon, icon.Name, 1, 1)
	icon.NameArray = TMW:GetSpellNames(icon, icon.Name)
	icon.NameNameArray = TMW:GetSpellNames(icon, icon.Name, nil, 1)
	icon.NameDictionary = TMW:GetSpellNames(icon, icon.Name, nil, nil, 1)
	icon.NameNameDictionary = TMW:GetSpellNames(icon, icon.Name, nil, 1, 1)
	icon.Units = TMW:GetUnits(icon, icon.Unit)

	icon.Filter = icon.BuffOrDebuff
	icon.Filterh = icon.BuffOrDebuff == "EITHER" and "HARMFUL"
	if icon.OnlyMine then
		icon.Filter = icon.Filter .. "|PLAYER"
		if icon.Filterh then icon.Filterh = icon.Filterh .. "|PLAYER" end
	end
	icon:SetReverse(true)
	icon.NAL = icon.NameNameDictionary[strlower(GetSpellInfo(8921))] and EFF_THR + 1 or #icon.NameArray -- need to force any icon looking for moonfire to check all auras on the target because of a blizzard bug in WoW 4.1.
	icon.NAL = icon.Sort and #icon.NameArray > 1 and EFF_THR + 1 or icon.NAL

	icon.FirstTexture = SpellTextures[icon.NameFirst]
	if icon.Name == "" then
		icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
	elseif SpellTextures[icon.NameFirst] then
		icon:SetTexture(SpellTextures[icon.NameFirst])
	elseif TMW:DoSetTexture(icon) then
		icon:SetTexture("Interface\\Icons\\INV_Misc_PocketWatch_01")
	end

	icon:SetScript("OnUpdate", Buff_OnUpdate)
	icon:OnUpdate(TMW.time)
end



