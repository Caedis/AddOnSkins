if not (IsAddOnLoaded("ElvUI") or IsAddOnLoaded("Tukui")) then return end
if not IsAddOnLoaded("Altoholic") then return end
local s = UIPackageSkinFuncs.s
local c = UIPackageSkinFuncs.c
local SkinAltoholic = CreateFrame("Frame")
SkinAltoholic:RegisterEvent("PLAYER_ENTERING_WORLD")
SkinAltoholic:SetScript("OnEvent", function(self)
if (UISkinOptions.AltoholicSkin == "Disabled") then return end
LoadAddOn("Altoholic_Characters")

	AltoTooltip:HookScript("OnShow", function(self) self:SetTemplate("Transparent") end)
	AltoholicFramePortrait:Kill()
	AltoholicFrame:StripTextures(True)
	AltoholicFrameActivity:StripTextures(True)
	AltoholicFrameBagUsage:StripTextures(True)
	AltoholicFrameSkills:StripTextures(True)
	AltoholicFrameSummary:StripTextures(True)
	AltoMsgBox:StripTextures(True)
	AltoholicFrame:SetTemplate("Transparent")
	AltoholicFrameActivity:SetTemplate("Transparent")
	AltoholicFrameBagUsage:SetTemplate("Transparent")
	AltoholicFrameSkills:SetTemplate("Transparent")
	AltoholicFrameSummary:SetTemplate("Transparent")
	AltoMsgBox:SetTemplate("Transparent")
	cSkinButton(AltoMsgBoxYesButton)
	cSkinButton(AltoMsgBoxNoButton)
	cSkinButton(AltoholicFrame_ResetButton)
	cSkinButton(AltoholicFrame_SearchButton)
	cSkinCloseButton(AltoholicFrameCloseButton)
	cSkinDropDownBox(AltoholicTabSummary_SelectLocation)
	AltoholicTabSummary_SelectLocation:Size(200, 15)
	AltoholicFrame_ResetButton:Point("TOPLEFT", AltoholicFrame, "TOPLEFT", 25, -77)
	AltoholicFrame_ResetButton:Size(85, 24)
	AltoholicFrame_SearchButton:Size(85, 24)
	cSkinEditBox(AltoholicFrame_SearchEditBox)
	AltoholicFrame_SearchEditBox:Size(175, 15)
	AltoholicFrame_SearchEditBox:Point("TOPLEFT", AltoholicFrame, "TOPLEFT", 37, -56)
	cSkinScrollBar(AltoholicFrameSummaryScrollFrameScrollBar)
	AltoholicFrameSummaryScrollFrame:StripTextures(True)
	cSkinScrollBar(AltoholicFrameBagUsageScrollFrameScrollBar)
	AltoholicFrameBagUsageScrollFrame:StripTextures(True)
	cSkinScrollBar(AltoholicFrameSkillsScrollFrameScrollBar)
	AltoholicFrameSkillsScrollFrame:StripTextures(True)
	cSkinScrollBar(AltoholicFrameActivityScrollFrameScrollBar)
	AltoholicFrameActivityScrollFrame:StripTextures(True)
	AltoholicFrameTab1:Point("TOPLEFT", AltoholicFrame, "BOTTOMLEFT", -5, 2)
	AltoholicFrameContainers:StripTextures(True)
	AltoholicFrameContainers:SetTemplate("Transparent")
	AltoholicFrameRecipes:SetTemplate("Transparent")
	AltoholicFrameQuests:SetTemplate("Transparent")
	AltoholicFrameTalents:SetTemplate("Transparent")
	AltoholicFrameGlyphs:SetTemplate("Transparent")
	AltoholicFrameMail:SetTemplate("Transparent")
	AltoholicFrameSpellbook:SetTemplate("Transparent")
	AltoholicFramePets:SetTemplate("Transparent")
	AltoholicFrameAuctions:SetTemplate("Transparent")
	cSkinScrollBar(AltoholicFrameContainersScrollFrameScrollBar)
	AltoholicFrameContainersScrollFrame:StripTextures(True)
	cSkinScrollBar(AltoholicFrameQuestsScrollFrameScrollBar)
	AltoholicFrameQuestsScrollFrame:StripTextures(True)
	cSkinScrollBar(AltoholicFrameRecipesScrollFrameScrollBar)
	AltoholicFrameRecipesScrollFrame:StripTextures(True)
	cSkinDropDownBox(AltoholicFrameTalents_SelectMember)
	cSkinDropDownBox(AltoholicTabCharacters_SelectRealm)
	cSkinNextPrevButton(AltoholicFrameSpellbookPrevPage)
	cSkinNextPrevButton(AltoholicFrameSpellbookNextPage)
	cSkinRotateButton(AltoholicFramePetsNormal_ModelFrameRotateLeftButton)
	cSkinRotateButton(AltoholicFramePetsNormal_ModelFrameRotateRightButton)
	cSkinNextPrevButton(AltoholicFramePetsNormalPrevPage)
	cSkinNextPrevButton(AltoholicFramePetsNormalNextPage)
	cSkinButton(AltoholicTabCharacters_Sort1)
	cSkinButton(AltoholicTabCharacters_Sort2)
	cSkinButton(AltoholicTabCharacters_Sort3)

	for i = 1, 4 do
		_G["AltoholicTabSummaryMenuItem"..i]:StripTextures(True)
		_G["AltoholicTabSummaryMenuItem"..i]:SetTemplate("Transparent")	
	end

	for i = 1, 8 do
		_G["AltoholicTabSummary_Sort"..i]:StripTextures(True)
		_G["AltoholicTabSummary_Sort"..i]:SetTemplate("Transparent")
	end

	for i = 1, 7 do
		cSkinTab(_G["AltoholicFrameTab"..i])
	end

	for i = 1, 14 do
		_G["AltoholicFrameContainersEntry1Item"..i]:StripTextures(True)
		_G["AltoholicFrameContainersEntry2Item"..i]:StripTextures(True)
		_G["AltoholicFrameContainersEntry3Item"..i]:StripTextures(True)
		_G["AltoholicFrameContainersEntry4Item"..i]:StripTextures(True)
		_G["AltoholicFrameContainersEntry5Item"..i]:StripTextures(True)
		_G["AltoholicFrameContainersEntry6Item"..i]:StripTextures(True)
		_G["AltoholicFrameContainersEntry7Item"..i]:StripTextures(True)
	end

local function LoadSkinAchievements()

	AltoholicFrameAchievements:StripTextures(True)
	AltoholicFrameAchievements:CreateBackdrop("Transparent")
	AltoholicFrameAchievementsScrollFrame:StripTextures(True)
	cSkinScrollBar(AltoholicFrameAchievementsScrollFrameScrollBar)
	AltoholicAchievementsMenuScrollFrame:StripTextures(True)
	cSkinScrollBar(AltoholicAchievementsMenuScrollFrameScrollBar)
	cSkinDropDownBox(AltoholicTabAchievements_SelectRealm)
	AltoholicTabAchievements_SelectRealm:Point("TOPLEFT", AltoholicFrame, "TOPLEFT", 205, -57)

	for i = 1, 15 do
		_G["AltoholicTabAchievementsMenuItem"..i]:StripTextures(True)
		_G["AltoholicTabAchievementsMenuItem"..i]:SetTemplate("Transparent")
	end

	for i = 1, 10 do
		_G["AltoholicFrameAchievementsEntry1Item"..i]:StripTextures(True)
		_G["AltoholicFrameAchievementsEntry2Item"..i]:StripTextures(True)
		_G["AltoholicFrameAchievementsEntry3Item"..i]:StripTextures(True)
		_G["AltoholicFrameAchievementsEntry4Item"..i]:StripTextures(True)
		_G["AltoholicFrameAchievementsEntry5Item"..i]:StripTextures(True)
		_G["AltoholicFrameAchievementsEntry6Item"..i]:StripTextures(True)
		_G["AltoholicFrameAchievementsEntry7Item"..i]:StripTextures(True)
		_G["AltoholicFrameAchievementsEntry8Item"..i]:StripTextures(True)
	end
end

local function LoadSkinAgenda()

	AltoholicFrameCalendarScrollFrame:StripTextures(True)
	AltoholicFrameCalendarScrollFrame:CreateBackdrop("Transparent")
	cSkinScrollBar(AltoholicFrameCalendarScrollFrameScrollBar)
	cSkinNextPrevButton(AltoholicFrameCalendar_NextMonth)
	cSkinNextPrevButton(AltoholicFrameCalendar_PrevMonth)
	AltoholicTabAgendaMenuItem1:StripTextures(True)
	AltoholicTabAgendaMenuItem1:SetTemplate("Transparent")

	for i = 1, 14 do
		_G["AltoholicFrameCalendarEntry"..i]:StripTextures(True)
		_G["AltoholicFrameCalendarEntry"..i]:SetTemplate("Transparent")
	end
end

local function LoadSkinGrids()

	AltoholicFrameGrids:CreateBackdrop("Transparent")
	cSkinScrollBar(AltoholicFrameGridsScrollFrameScrollBar)
	AltoholicFrameGridsScrollFrame:StripTextures(True)
	cSkinDropDownBox(AltoholicTabGrids_SelectRealm)
	cSkinDropDownBox(AltoholicTabGrids_SelectView)

	for i = 1, 10 do
		_G["AltoholicFrameGridsEntry1Item"..i]:StripTextures(True)
		_G["AltoholicFrameGridsEntry2Item"..i]:StripTextures(True)
		_G["AltoholicFrameGridsEntry3Item"..i]:StripTextures(True)
		_G["AltoholicFrameGridsEntry4Item"..i]:StripTextures(True)
		_G["AltoholicFrameGridsEntry5Item"..i]:StripTextures(True)
		_G["AltoholicFrameGridsEntry6Item"..i]:StripTextures(True)
		_G["AltoholicFrameGridsEntry7Item"..i]:StripTextures(True)
		_G["AltoholicFrameGridsEntry8Item"..i]:StripTextures(True)
	end
end

local function LoadSkinGuild()

	AltoholicFrameGuildMembers:StripTextures(True)
	AltoholicFrameGuildMembers:SetTemplate("Transparent")
	AltoholicFrameGuildBank:StripTextures(True)
	AltoholicFrameGuildBank:SetTemplate("Transparent")
	cSkinScrollBar(AltoholicFrameGuildMembersScrollFrameScrollBar)
	AltoholicFrameGuildMembersScrollFrame:StripTextures(True)

	for i = 1, 2 do
		_G["AltoholicTabGuildMenuItem"..i]:StripTextures(True)
		_G["AltoholicTabGuildMenuItem"..i]:SetTemplate("Transparent")
	end

	for i = 1, 14 do
		_G["AltoholicFrameGuildBankEntry1Item"..i]:StripTextures(True)
		_G["AltoholicFrameGuildBankEntry2Item"..i]:StripTextures(True)
		_G["AltoholicFrameGuildBankEntry3Item"..i]:StripTextures(True)
		_G["AltoholicFrameGuildBankEntry4Item"..i]:StripTextures(True)
		_G["AltoholicFrameGuildBankEntry5Item"..i]:StripTextures(True)
		_G["AltoholicFrameGuildBankEntry6Item"..i]:StripTextures(True)
		_G["AltoholicFrameGuildBankEntry7Item"..i]:StripTextures(True)
	end

	for i = 1, 19 do
		_G["AltoholicFrameGuildMembersItem"..i]:StripTextures(True)
	end

	for i = 1, 5 do
		_G["AltoholicTabGuild_Sort"..i]:StripTextures(True)
		_G["AltoholicTabGuild_Sort"..i]:SetTemplate("Transparent")
	end
end

local function LoadSkinSearch()

	AltoholicFrameSearch:StripTextures(True)
	AltoholicFrameSearch:CreateBackdrop("Transparent")
	AltoholicFrameSearchScrollFrame:StripTextures(True)
	cSkinScrollBar(AltoholicFrameSearchScrollFrameScrollBar)
	AltoholicSearchMenuScrollFrame:StripTextures(True)
	cSkinScrollBar(AltoholicSearchMenuScrollFrameScrollBar)
	cSkinDropDownBox(AltoholicTabSearch_SelectRarity)
	cSkinDropDownBox(AltoholicTabSearch_SelectSlot)
	cSkinDropDownBox(AltoholicTabSearch_SelectLocation)
	AltoholicTabSearch_SelectRarity:Size(125, 32)
	AltoholicTabSearch_SelectSlot:Size(125, 32)
	AltoholicTabSearch_SelectLocation:Size(175, 32)
	cSkinEditBox(_G["AltoholicTabSearch_MinLevel"])
	cSkinEditBox(_G["AltoholicTabSearch_MaxLevel"])

	for i = 1, 15 do
		_G["AltoholicTabSearchMenuItem"..i]:StripTextures(True)
		_G["AltoholicTabSearchMenuItem"..i]:SetTemplate("Transparent")
	end

	for i = 1, 8 do
		_G["AltoholicTabSearch_Sort"..i]:StripTextures(True)
		_G["AltoholicTabSearch_Sort"..i]:SetTemplate("Transparent")
	end
end

if IsAddOnLoaded("Tukui") then 
	s.SkinFuncs["Altoholic_Achievements"] = LoadSkinAchievements
	s.SkinFuncs["Altoholic_Agenda"] = LoadSkinAgenda
	s.SkinFuncs["Altoholic_Grids"] = LoadSkinGrids
	s.SkinFuncs["Altoholic_Guild"] = LoadSkinGuild
	s.SkinFuncs["Altoholic_Search"] = LoadSkinSearch
end
if IsAddOnLoaded("ElvUI") then 
	c:GetModule('Skins')
	s:RegisterSkin('Altoholic_Achievements', LoadSkinAchievements)
	s:RegisterSkin('Altoholic_Agenda', LoadSkinAgenda)
	s:RegisterSkin('Altoholic_Grids', LoadSkinGrids)
	s:RegisterSkin('Altoholic_Guild', LoadSkinGuild)
	s:RegisterSkin('Altoholic_Search', LoadSkinSearch)
end
end)