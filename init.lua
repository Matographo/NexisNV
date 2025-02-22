--[[
Welcome to the init file of your nexisnv.

This file is the first one loaded when the system starts.
Everything is organized so you can easily find what you're looking for.

Modules:
  • System:
      Contains all necessary functions to start the main components.
      It bootstraps the Package Manager (Lazy) and optimizes the startup speed.
  • Core.easyconfig:
      Provides easy-to-use configuration options.
      Intended for user-specific settings without modifying core files.
  • Lazyinit:
      Loads all plugins and themes.
      Divided into two sections: one for NexisNV and one for the user.
  • Core:
      User customizations such as keybindings, colors, and options.

I'm glad you're here!
If you have any questions, feel free to reach out on GitHub, contribute, or make suggestions.
]]

require("system.init")
require("core.easyconfig")
require("lazyinit")
require("core.init")
