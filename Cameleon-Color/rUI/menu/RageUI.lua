---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 21/04/2019 21:20
---
---
--- @author Dylan MALANDAIN
--- @version 2.0.0
--- @since 2020
---
--- RageUI Is Advanced UI Libs in LUA for make beautiful interface like RockStar GAME.
---
---
--- Commercial Info.
--- Any use for commercial purposes is strictly prohibited and will be punished.
---
--- @see RageUI
---


---@class Keys
Keys = {};

---Register
---@param Controls string
---@param ControlName string
---@param Description string
---@param Action function
---@return Keys
---@public
function Keys.Register(Controls, ControlName, Description, Action)
    local _Keys = {
        CONTROLS = Controls
    }
    RegisterKeyMapping(string.format('rageui-%s', ControlName), Description, "keyboard", Controls)
    RegisterCommand(string.format('rageui-%s', ControlName), function(source, args)
        if (Action ~= nil) then
            --print(string.format('RageUI - Pressed keys %s', Controls))
            Action();
        end
    end, false)
    return setmetatable(_Keys, Keys)
end

---Exists
---@param Controls string
---@return boolean
function Keys:Exists(Controls)
    return self.CONTROLS == Controls and true or false
end

print("^3 RageUI - https://github.com/iTexZoz/RageUI - OpenSource Advanced UI Api ^0")

---round
---@param num number
---@param numDecimalPlaces number
---@return number
---@public
function math.round(num, numDecimalPlaces)
    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

---starts
---@param String string
---@param Start number
---@return number
---@public
function string.starts(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
end

---@type table
RageUI.Menus = setmetatable({}, RageUI.Menus)

---@type table
---@return boolean
RageUI.Menus.__call = function()
    return true
end

---@type table
RageUI.Menus.__index = RageUI.Menus

---@type table
RageUI.CurrentMenu = nil

---@type table
RageUI.NextMenu = nil

---@type number
RageUI.Options = 0

---@type number
RageUI.ItemOffset = 0

---@type number
RageUI.StatisticPanelCount = 0

---@type table
RageUI.UI = {
    Current = "RageUI",
    Style = {
        RageUI = {
            Width = 0
        },
        NativeUI = {
            Width = 0
        }
    }
}

---@type table
RageUI.Settings = {
    Debug = false,
    Controls = {
        Up = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 172 },
                { 1, 172 },
                { 2, 172 },
                { 0, 241 },
                { 1, 241 },
                { 2, 241 },
            },
        },
        Down = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 173 },
                { 1, 173 },
                { 2, 173 },
                { 0, 242 },
                { 1, 242 },
                { 2, 242 },
            },
        },
        Left = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 174 },
                { 1, 174 },
                { 2, 174 },
            },
        },
        Right = {
            Enabled = true,
            Pressed = false,
            Active = false,
            Keys = {
                { 0, 175 },
                { 1, 175 },
                { 2, 175 },
            },
        },
        SliderLeft = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 174 },
                { 1, 174 },
                { 2, 174 },
            },
        },
        SliderRight = {
            Enabled = true,
            Pressed = false,
            Active = false,
            Keys = {
                { 0, 175 },
                { 1, 175 },
                { 2, 175 },
            },
        },
        Select = {
            Enabled = true,
            Pressed = false,
            Active = false,
            Keys = {
                { 0, 201 },
                { 1, 201 },
                { 2, 201 },
            },
        },
        Back = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 177 },
                { 1, 177 },
                { 2, 177 },
                { 0, 199 },
                { 1, 199 },
                { 2, 199 },
            },
        },
        Click = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 24 },
            },
        },
        Enabled = {
            Controller = {
                { 0, 2 }, -- Look Up and Down
                { 0, 1 }, -- Look Left and Right
                { 0, 25 }, -- Aim
                { 0, 24 }, -- Attack
            },
            Keyboard = {
                { 0, 201 }, -- Select
                { 0, 195 }, -- X axis
                { 0, 196 }, -- Y axis
                { 0, 187 }, -- Down
                { 0, 188 }, -- Up
                { 0, 189 }, -- Left
                { 0, 190 }, -- Right
                { 0, 202 }, -- Back
                { 0, 217 }, -- Select
                { 0, 242 }, -- Scroll down
                { 0, 241 }, -- Scroll up
                { 0, 239 }, -- Cursor X
                { 0, 240 }, -- Cursor Y
                { 0, 31 }, -- Move Up and Down
                { 0, 30 }, -- Move Left and Right
                { 0, 21 }, -- Sprint
                { 0, 22 }, -- Jump
                { 0, 23 }, -- Enter
                { 0, 75 }, -- Exit Vehicle
                { 0, 71 }, -- Accelerate Vehicle
                { 0, 72 }, -- Vehicle Brake
                { 0, 59 }, -- Move Vehicle Left and Right
                { 0, 89 }, -- Fly Yaw Left
                { 0, 9 }, -- Fly Left and Right
                { 0, 8 }, -- Fly Up and Down
                { 0, 90 }, -- Fly Yaw Right
                { 0, 76 }, -- Vehicle Handbrake
            },
        },
    },
    Audio = {
        Id = nil,
        Use = "RageUI",
        RageUI = {
            UpDown = {
                audioName = "HUD_FREEMODE_SOUNDSET",
                audioRef = "NAV_UP_DOWN",
            },
            LeftRight = {
                audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                audioRef = "NAV_LEFT_RIGHT",
            },
            Select = {
                audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                audioRef = "SELECT",
            },
            Back = {
                audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                audioRef = "BACK",
            },
            Error = {
                audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                audioRef = "ERROR",
            },
            Slider = {
                audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                audioRef = "CONTINUOUS_SLIDER",
                Id = nil
            },
        },
        NativeUI = {
            UpDown = {
                audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                audioRef = "NAV_UP_DOWN",
            },
            LeftRight = {
                audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                audioRef = "NAV_LEFT_RIGHT",
            },
            Select = {
                audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                audioRef = "SELECT",
            },
            Back = {
                audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                audioRef = "BACK",
            },
            Error = {
                audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                audioRef = "ERROR",
            },
            Slider = {
                audioName = "HUD_FRONTEND_DEFAULT_SOUNDSET",
                audioRef = "CONTINUOUS_SLIDER",
                Id = nil
            },
        }
    },
    Items = {
        Title = {
            Background = { Width = 431, Height = 107 },
            Text = { X = 215, Y = 20, Scale = 1.15 },
        },
        Subtitle = {
            Background = { Width = 431, Height = 37 },
            Text = { X = 8, Y = 3, Scale = 0.35 },
            PreText = { X = 425, Y = 3, Scale = 0.35 },
        },
        Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 0, Width = 431 },
        Navigation = {
            Rectangle = { Width = 431, Height = 18 },
            Offset = 5,
            Arrows = { Dictionary = "commonmenu", Texture = "shop_arrows_upanddown", X = 190, Y = -6, Width = 50, Height = 50 },
        },
        Description = {
            Bar = { Y = 4, Width = 431, Height = 4 },
            Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 4, Width = 431, Height = 30 },
            Text = { X = 8, Y = 10, Scale = 0.35 },
        },
    },
    Panels = {
        Grid = {
            Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 4, Width = 431, Height = 275 },
            Grid = { Dictionary = "pause_menu_pages_char_mom_dad", Texture = "nose_grid", X = 115.5, Y = 47.5, Width = 200, Height = 200 },
            Circle = { Dictionary = "mpinventory", Texture = "in_world_circle", X = 115.5, Y = 47.5, Width = 20, Height = 20 },
            Text = {
                Top = { X = 215.5, Y = 15, Scale = 0.35 },
                Bottom = { X = 215.5, Y = 250, Scale = 0.35 },
                Left = { X = 57.75, Y = 130, Scale = 0.35 },
                Right = { X = 373.25, Y = 130, Scale = 0.35 },
            },
        },
        Percentage = {
            Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 4, Width = 431, Height = 76 },
            Bar = { X = 9, Y = 50, Width = 413, Height = 10 },
            Text = {
                Left = { X = 25, Y = 15, Scale = 0.35 },
                Middle = { X = 215.5, Y = 15, Scale = 0.35 },
                Right = { X = 398, Y = 15, Scale = 0.35 },
            },
        },
    },
}

function RageUI.SetScaleformParams(scaleform, data)
    data = data or {}
    for k, v in pairs(data) do
        PushScaleformMovieFunction(scaleform, v.name)
        if v.param then
            for _, par in pairs(v.param) do
                if math.type(par) == "integer" then
                    PushScaleformMovieFunctionParameterInt(par)
                elseif type(par) == "boolean" then
                    PushScaleformMovieFunctionParameterBool(par)
                elseif math.type(par) == "float" then
                    PushScaleformMovieFunctionParameterFloat(par)
                elseif type(par) == "string" then
                    PushScaleformMovieFunctionParameterString(par)
                end
            end
        end
        if v.func then
            v.func()
        end
        PopScaleformMovieFunctionVoid()
    end
end

---Visible
---@param Menu function
---@param Value boolean
---@return table
---@public
function RageUI.Visible(Menu, Value)
    if Menu ~= nil then
        if Menu() then
            if type(Value) == "boolean" then
                if Value then
                    if RageUI.CurrentMenu ~= nil then
			if RageUI.CurrentMenu.Closed ~= nil then
                            RageUI.CurrentMenu.Closed()
                        end
                        RageUI.CurrentMenu.Open = not Value
                    end
                    Menu:UpdateInstructionalButtons(Value);
                    Menu:UpdateCursorStyle();
                    RageUI.CurrentMenu = Menu
                    menuOpen = true
                else
                    menuOpen = false
                    RageUI.CurrentMenu = nil
                end
                Menu.Open = Value
                RageUI.Options = 0
                RageUI.ItemOffset = 0
                RageUI.LastControl = false
            else
                return Menu.Open
            end
        end
    end
end

function RageUI.CloseAll()
    menuOpen = false
    if RageUI.CurrentMenu ~= nil then
        local parent = RageUI.CurrentMenu.Parent
        while parent ~= nil do
            parent.Index = 1
            parent.Pagination.Minimum = 1
            parent.Pagination.Maximum = 10
            parent = parent.Parent
        end
        RageUI.CurrentMenu.Index = 1
        RageUI.CurrentMenu.Pagination.Minimum = 1
        RageUI.CurrentMenu.Pagination.Maximum = 10
        RageUI.CurrentMenu.Open = false
        RageUI.CurrentMenu = nil
    end
    RageUI.Options = 0
    RageUI.ItemOffset = 0
    ResetScriptGfxAlign()
end

---Banner
---@return nil
---@public
---@param Enabled boolean
function RageUI.Banner(Enabled, Glare)
    if type(Enabled) == "boolean" then
        if Enabled == true then


            if RageUI.CurrentMenu ~= nil then
                if RageUI.CurrentMenu() then


                    RageUI.ItemsSafeZone(RageUI.CurrentMenu)

                    if RageUI.CurrentMenu.Sprite then
                        RenderSprite(RageUI.CurrentMenu.Sprite.Dictionary, RageUI.CurrentMenu.Sprite.Texture, RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y, RageUI.Settings.Items.Title.Background.Width + RageUI.CurrentMenu.WidthOffset, RageUI.Settings.Items.Title.Background.Height, nil)
                    else
                        RenderRectangle(RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y, RageUI.Settings.Items.Title.Background.Width + RageUI.CurrentMenu.WidthOffset, RageUI.Settings.Items.Title.Background.Height, RageUI.CurrentMenu.Rectangle.R, RageUI.CurrentMenu.Rectangle.G, RageUI.CurrentMenu.Rectangle.B, RageUI.CurrentMenu.Rectangle.A)
                    end

                    --if (RageUI.CurrentMenu.WidthOffset == 100) then
                        if Glare then

                            local ScaleformMovie = RequestScaleformMovie("MP_MENU_GLARE")
                            while not HasScaleformMovieLoaded(ScaleformMovie) do
                                Citizen.Wait(0)
                            end

							---@type number
							local Glarewidth = RageUI.Settings.Items.Title.Background.Width

							---@type number
							local Glareheight = RageUI.Settings.Items.Title.Background.Height
							---@type number
							local GlareX = RageUI.CurrentMenu.X / 1860 + (RageUI.CurrentMenu.SafeZoneSize.X / (64.399 - (RageUI.CurrentMenu.WidthOffset * 0.065731)))
                            ---@type number
                            local GlareY = RageUI.CurrentMenu.Y / 1080 + RageUI.CurrentMenu.SafeZoneSize.Y / 33.195020746888
                            RageUI.SetScaleformParams(ScaleformMovie, {
                                { name = "SET_DATA_SLOT", param = { GetGameplayCamRelativeHeading() } }
                            })

                            DrawScaleformMovie(ScaleformMovie, GlareX, GlareY, Glarewidth / 430, Glareheight / 100, 255, 255, 255, 255, 0)

                        end
                    --end

                    RenderText(RageUI.CurrentMenu.Title, RageUI.CurrentMenu.X + RageUI.Settings.Items.Title.Text.X + (RageUI.CurrentMenu.WidthOffset / 2), RageUI.CurrentMenu.Y + RageUI.Settings.Items.Title.Text.Y, 1, RageUI.Settings.Items.Title.Text.Scale, 255, 255, 255, 255, 1)
                    RageUI.ItemOffset = RageUI.ItemOffset + RageUI.Settings.Items.Title.Background.Height
                end
            end
        end
    else
        error("Enabled is not boolean")
    end
end

---CloseAll -- TODO 
---@return nil
---@public
-- function RageUI:CloseAll()
--     RageUI.PlaySound(RageUI.Settings.Audio.Library, RageUI.Settings.Audio.Back)
--     RageUI.NextMenu = nil
--     RageUI.Visible(RageUI.CurrentMenu, false)
-- end

---Subtitle
---@return nil
---@public
function RageUI.Subtitle()
    if RageUI.CurrentMenu ~= nil then
        if RageUI.CurrentMenu() then
            RageUI.ItemsSafeZone(RageUI.CurrentMenu)
            if RageUI.CurrentMenu.Subtitle ~= "" then
                RenderRectangle(RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.ItemOffset, RageUI.Settings.Items.Subtitle.Background.Width + RageUI.CurrentMenu.WidthOffset, RageUI.Settings.Items.Subtitle.Background.Height + RageUI.CurrentMenu.SubtitleHeight, 0, 0, 0, 255)
                RenderText(RageUI.CurrentMenu.Subtitle, RageUI.CurrentMenu.X + RageUI.Settings.Items.Subtitle.Text.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Subtitle.Text.Y + RageUI.ItemOffset, 0, RageUI.Settings.Items.Subtitle.Text.Scale, 245, 245, 245, 255, nil, false, false, RageUI.Settings.Items.Subtitle.Background.Width + RageUI.CurrentMenu.WidthOffset)
                if RageUI.CurrentMenu.Index > RageUI.CurrentMenu.Options or RageUI.CurrentMenu.Index < 0 then
                    RageUI.CurrentMenu.Index = 1
                end
                RageUI.RefreshPagination()
                if RageUI.CurrentMenu.PageCounter == nil then
                    RenderText(RageUI.CurrentMenu.PageCounterColour .. RageUI.CurrentMenu.Index .. " / " .. RageUI.CurrentMenu.Options, RageUI.CurrentMenu.X + RageUI.Settings.Items.Subtitle.PreText.X + RageUI.CurrentMenu.WidthOffset, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Subtitle.PreText.Y + RageUI.ItemOffset, 0, RageUI.Settings.Items.Subtitle.PreText.Scale, 245, 245, 245, 255, 2)
                else
                    RenderText(RageUI.CurrentMenu.PageCounter, RageUI.CurrentMenu.X + RageUI.Settings.Items.Subtitle.PreText.X + RageUI.CurrentMenu.WidthOffset, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Subtitle.PreText.Y + RageUI.ItemOffset, 0, RageUI.Settings.Items.Subtitle.PreText.Scale, 245, 245, 245, 255, 2)
                end
                RageUI.ItemOffset = RageUI.ItemOffset + RageUI.Settings.Items.Subtitle.Background.Height
            end
        end
    end
end

---Background
---@return nil
---@public
function RageUI.Background()
    if RageUI.CurrentMenu ~= nil then
        if RageUI.CurrentMenu() then
            RageUI.ItemsSafeZone(RageUI.CurrentMenu)
            SetScriptGfxDrawOrder(0)
            RenderSprite(RageUI.Settings.Items.Background.Dictionary, RageUI.Settings.Items.Background.Texture, RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Background.Y + RageUI.CurrentMenu.SubtitleHeight, RageUI.Settings.Items.Background.Width + RageUI.CurrentMenu.WidthOffset, RageUI.ItemOffset, 0, 0, 0, 0, 255)
            SetScriptGfxDrawOrder(1)
        end
    end
end

---Description
---@return nil
---@public
function RageUI.Description()
    if RageUI.CurrentMenu ~= nil and RageUI.CurrentMenu.Description ~= nil then
        if RageUI.CurrentMenu() then
            RageUI.ItemsSafeZone(RageUI.CurrentMenu)
            RenderRectangle(RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Description.Bar.Y + RageUI.CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Description.Bar.Width + RageUI.CurrentMenu.WidthOffset, RageUI.Settings.Items.Description.Bar.Height, 0, 0, 0, 255)
            RenderSprite(RageUI.Settings.Items.Description.Background.Dictionary, RageUI.Settings.Items.Description.Background.Texture, RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Description.Background.Y + RageUI.CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Description.Background.Width + RageUI.CurrentMenu.WidthOffset, RageUI.CurrentMenu.DescriptionHeight, 0, 0, 0, 255)
            RenderText(RageUI.CurrentMenu.Description, RageUI.CurrentMenu.X + RageUI.Settings.Items.Description.Text.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Description.Text.Y + RageUI.CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, RageUI.Settings.Items.Description.Text.Scale, 255, 255, 255, 255, nil, false, false, RageUI.Settings.Items.Description.Background.Width + RageUI.CurrentMenu.WidthOffset - 8.0)
            RageUI.ItemOffset = RageUI.ItemOffset + RageUI.CurrentMenu.DescriptionHeight + RageUI.Settings.Items.Description.Bar.Y
        end
    end
end

---Render
---@param instructionalButton boolean
---@return nil
---@public
function RageUI.Render(instructionalButton)
    if RageUI.CurrentMenu ~= nil then
        if RageUI.CurrentMenu() then
            if RageUI.CurrentMenu.Safezone then
                ResetScriptGfxAlign()
            end
            if (instructionalButton) then
                DrawScaleformMovieFullscreen(RageUI.CurrentMenu.InstructionalScaleform, 255, 255, 255, 255, 0)
            end
            RageUI.CurrentMenu.Options = RageUI.Options
            RageUI.CurrentMenu.SafeZoneSize = nil
            RageUI.Controls()
            RageUI.Options = 0
            RageUI.StatisticPanelCount = 0
            RageUI.ItemOffset = 0
            if RageUI.CurrentMenu.Controls.Back.Enabled and RageUI.CurrentMenu.Closable then
                if RageUI.CurrentMenu.Controls.Back.Pressed then
                    RageUI.CurrentMenu.Controls.Back.Pressed = false
                    local Audio = RageUI.Settings.Audio
                    RageUI.PlaySound(Audio[Audio.Use].Back.audioName, Audio[Audio.Use].Back.audioRef)
                    collectgarbage()
                    if RageUI.CurrentMenu.Closed ~= nil then
                        RageUI.CurrentMenu.Closed()
                    end
                    if RageUI.CurrentMenu.Parent ~= nil then
                        if RageUI.CurrentMenu.Parent() then
                            RageUI.NextMenu = RageUI.CurrentMenu.Parent
                            RageUI.CurrentMenu:UpdateCursorStyle()
                        else
                            --print('xxx') Debug print
                            RageUI.NextMenu = nil
                            RageUI.Visible(RageUI.CurrentMenu, false)
                        end
                    else
                        --print('zz') Debug print
                        RageUI.NextMenu = nil
                        RageUI.Visible(RageUI.CurrentMenu, false)
                    end
                end
            end
            if RageUI.NextMenu ~= nil then
                if RageUI.NextMenu() then
                    RageUI.Visible(RageUI.CurrentMenu, false)
                    RageUI.Visible(RageUI.NextMenu, true)
                    RageUI.CurrentMenu.Controls.Select.Active = false
                    RageUI.NextMenu = nil
                    RageUI.LastControl = false
                end
            end
        end
    end
end

---ItemsDescription
---@param CurrentMenu table
---@param Description string
---@param Selected boolean
---@return nil
---@public
function RageUI.ItemsDescription(CurrentMenu, Description, Selected)
    ---@type table
    if Description ~= "" or Description ~= nil then
        local SettingsDescription = RageUI.Settings.Items.Description;
        if Selected and CurrentMenu.Description ~= Description then
            CurrentMenu.Description = Description or nil
            ---@type number
            local DescriptionLineCount = GetLineCount(CurrentMenu.Description, CurrentMenu.X + SettingsDescription.Text.X, CurrentMenu.Y + SettingsDescription.Text.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, SettingsDescription.Text.Scale, 255, 255, 255, 255, nil, false, false, SettingsDescription.Background.Width + (CurrentMenu.WidthOffset - 5.0))
            if DescriptionLineCount > 1 then
                CurrentMenu.DescriptionHeight = SettingsDescription.Background.Height * DescriptionLineCount
            else
                CurrentMenu.DescriptionHeight = SettingsDescription.Background.Height + 7
            end
        end
    end
end

---MouseBounds
---@param CurrentMenu table
---@param Selected boolean
---@param Option number
---@param SettingsButton table
---@return boolean
---@public
function RageUI.ItemsMouseBounds(CurrentMenu, Selected, Option, SettingsButton)
    ---@type boolean
    local Hovered = false
    Hovered = RageUI.IsMouseInBounds(CurrentMenu.X + CurrentMenu.SafeZoneSize.X, CurrentMenu.Y + SettingsButton.Rectangle.Y + CurrentMenu.SafeZoneSize.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, SettingsButton.Rectangle.Width + CurrentMenu.WidthOffset, SettingsButton.Rectangle.Height)
    if Hovered and not Selected then
        RenderRectangle(CurrentMenu.X, CurrentMenu.Y + SettingsButton.Rectangle.Y + CurrentMenu.SubtitleHeight + RageUI.ItemOffset, SettingsButton.Rectangle.Width + CurrentMenu.WidthOffset, SettingsButton.Rectangle.Height, 255, 255, 255, 20)
        if CurrentMenu.Controls.Click.Active then
            CurrentMenu.Index = Option
            local Audio = RageUI.Settings.Audio
            RageUI.PlaySound(Audio[Audio.Use].Error.audioName, Audio[Audio.Use].Error.audioRef)
        end
    end
    return Hovered;
end

---ItemsSafeZone
---@param CurrentMenu table
---@return nil
---@public
function RageUI.ItemsSafeZone(CurrentMenu)
    if not CurrentMenu.SafeZoneSize then
        CurrentMenu.SafeZoneSize = { X = 0, Y = 0 }
        if CurrentMenu.Safezone then
            CurrentMenu.SafeZoneSize = RageUI.GetSafeZoneBounds()
            SetScriptGfxAlign(76, 84)
            SetScriptGfxAlignParams(0, 0, 0, 0)
        end
    end
end

function RageUI.CurrentIsEqualTo(Current, To, Style, DefaultStyle)
    if (Current == To) then
        return Style;
    else
        return DefaultStyle or {};
    end
end

function RageUI.RefreshPagination()
    if (RageUI.CurrentMenu ~= nil) then
        if (RageUI.CurrentMenu.Index > 10) then
            local offset = RageUI.CurrentMenu.Index - 10
            RageUI.CurrentMenu.Pagination.Minimum = 1 + offset
            RageUI.CurrentMenu.Pagination.Maximum = 10 + offset
        else
            RageUI.CurrentMenu.Pagination.Minimum = 1
            RageUI.CurrentMenu.Pagination.Maximum = 10
        end
    end
end

function RageUI.IsVisible(menu, header, glare, instructional, items, panels)
    if (RageUI.Visible(menu)) then
        if (header == true) then
            RageUI.Banner(true, glare or false)
        end
        RageUI.Subtitle()
        if (items ~= nil) then
            items()
        end
        RageUI.Background();
        RageUI.Navigation();
        RageUI.Description();
        if (panels ~= nil) then
            panels()
        end
        RageUI.Render(instructional or false)
    end
end


---CreateWhile
---@param wait number
---@param menu table
---@param key number
---@param closure function
---@return void
---@public
function RageUI.CreateWhile(wait, menu, key, closure)
    Citizen.CreateThread(function()
        while (true) do
            Citizen.Wait(wait or 0.1)

            if (key ~= nil) then
                if IsControlJustPressed(1, key) then
                    RageUI.Visible(menu, not RageUI.Visible(menu))
                end
            end

            closure()
        end
    end)
end

---SetStyleAudio
---@param StyleAudio string
---@return void
---@public
function RageUI.SetStyleAudio(StyleAudio)
    RageUI.Settings.Audio.Use = StyleAudio or "RageUI"
end

function RageUI.GetStyleAudio()
    return RageUI.Settings.Audio.Use or "RageUI"
end

