local _G = getfenv(0)

local buttons = {
    "ActionButton",
    "BonusActionButton",
    "MultiBarBottomLeftButton",
    "MultiBarBottomRightButton",
    "MultiBarLeftButton",
    "MultiBarRightButton",
}

for b = 1, getn(buttons) do
    for i = 1, NUM_ACTIONBAR_BUTTONS do
        _G[buttons[b]..i.."HotKey"]:Hide()
        _G[buttons[b]..i.."HotKey"].Show = function() end
    end
end