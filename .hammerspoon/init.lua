
local application = require("hs.application")
local eventtap = require("hs.eventtap")
local hotkey = require("hs.hotkey")
local osascript = require("hs.osascript")
local window = require("hs.window")

local mash 	 = {"ctrl", "alt"}
local mash_shift = {"ctrl", "shift"}

hyper = {"ctrl", "alt", "cmd"}
hypershift = {"ctrl", "alt", "cmd", "shift"}

require('watcher')
require('position')

local function keyCode(key)
  return function() eventtap.keyStroke({}, key) end
end

local function execute(applescript)
  local status, result = osascript.applescript(applescript)
  return result
end

local itermSplitRight = [[
  tell application "iterm"
    tell current tab of current window
      local currentIndex
      repeat with i from 1 to the count of sessions
        if item i of sessions is current session then
          set currentIndex to i
        end if
      end repeat
      if currentIndex is equal to (count of sessions) then
        select item 1 of sessions
      else
        select item (currentIndex + 1) of sessions
      end if
    end tell
  end tell
]]

local itermSplitLeft = [[
  tell application "iterm"
    tell current tab of current window
      local currentIndex
      repeat with i from 1 to the count of sessions
        if item i of sessions is current session then
          set currentIndex to i
        end if
      end repeat
      if currentIndex is equal to 1 then
        select item (count of sessions) of sessions
      else
        select item (currentIndex - 1) of sessions
      end if
    end tell
  end tell
]]

local chromeTabRight = [[
	tell application "Google Chrome"
		tell window 1
			local currentIndex
			repeat with i from 1 to the count of tabs
				if item i of tabs is active tab then
					set currentIndex to i
					exit repeat
				end if
			end repeat
			if currentIndex is equal to (count of tabs) then
				set active tab index to 1
			else
				set active tab index to (currentIndex + 1)
			end if
		end tell
	end tell
]]

local chromeTabLeft = [[
	tell application "Google Chrome"
		tell window 1
			local currentIndex
			repeat with i from 1 to the count of tabs
				if item i of tabs is active tab then
					set currentIndex to i
					exit repeat
				end if
			end repeat
			if currentIndex is equal to 1 then
				set active tab index to (count of tabs)
			else
				set active tab index to (currentIndex - 1)
			end if
		end tell
	end tell
]]

function mashShiftLeft()
	local frontmostName = application.name(application.frontmostApplication())
	if frontmostName == "iTerm2" then 
		execute(itermSplitLeft)
	end
	if frontmostName == "Google Chrome" then 
		execute(chromeTabLeft)
	end
end

function mashShiftRight()
	local frontmostName = application.name(application.frontmostApplication())
	if frontmostName == "iTerm2" then 
		execute(itermSplitRight)
	end
	if frontmostName == "Google Chrome" then 
		execute(chromeTabRight)
	end
end

-- VIM Bindings
hotkey.bind({"ctrl"}, 'h', keyCode('left') ,  nil,   keyCode('left'))
hotkey.bind({"ctrl"}, 'j', keyCode('down') ,  nil,   keyCode('down') )
hotkey.bind({"ctrl"}, 'k', keyCode('up')   ,  nil,   keyCode('up') )
hotkey.bind({"ctrl"}, 'l', keyCode('right'),  nil,   keyCode('right') )

-- Unified tab cycling 

hotkey.bind(mash_shift, 'h', mashShiftLeft)
hotkey.bind(mash_shift, 'l', mashShiftRight)

-- Window switching 
-- local switcher = window.switcher.new(window.filter.new():setCurrentSpace(true):setDefaultFilter{})
-- hotkey.bind(mash_shift, 'i', function() switcher:previous() end)
-- hotkey.bind(mash_shift, 'u', function() switcher:next() end)

-- Window switching, focused application
local switcherIterm = window.switcher.new(window.filter.new():setCurrentSpace(true):setDefaultFilter(false):setAppFilter('iTerm2'))
local switcherChrome = window.switcher.new(window.filter.new():setCurrentSpace(true):setDefaultFilter(false):setAppFilter('Google Chrome'))

function appWindowSwitchDown()
	local frontmostName = application.name(application.frontmostApplication())
  if frontmostName == 'iTerm2' then switcherIterm:next()
  elseif frontmostName == 'Google Chrome' then switcherChrome:next()
  -- else switcher:next()
  end
end

function appWindowSwitchUp()
	local frontmostName = application.name(application.frontmostApplication())
  if frontmostName == 'iTerm2' then switcherIterm:previous()
  elseif frontmostName == 'Google Chrome' then switcherChrome:previous()
  -- else switcher:previous()
  end
end

-- App window switch hotkeys 
-- hotkey.bind(mash_shift, 'j', appWindowSwitchDown)
-- hotkey.bind(mash_shift, 'k', appWindowSwitchUp)

-- Spaces switching hotkeys 
hotkey.bind(mash_shift, '[', function () hs.eventtap.keyStroke({"ctrl"}, "left") end)
hotkey.bind(mash_shift, ']', function () hs.eventtap.keyStroke({"ctrl"}, "right") end)

-- Application selection hotkeys 
-- hotkey.bind(mash_shift, '1', function () application.launchOrFocus("Google Chrome") end)
-- hotkey.bind(mash_shift, '2', function () application.launchOrFocus("iterm") end)

-- Window movement across screens 
hotkey.bind(hyper, 'i', function () window.focusedWindow():moveOneScreenNorth() end)
hotkey.bind(hyper, 'u', function () window.focusedWindow():moveOneScreenSouth() end)
