version = "0.19.4"
-- config
---- general
------ show hidden
xplr.config.general.show_hidden = true

------ read only
xplr.config.general.read_only = false

------ table
-- xplr.config.general.table.row.cols.style.fg =  { Rgb = { 100, 150, 200 } }
xplr.config.general.table.style.fg = { Rgb = { 240, 150, 90 } }
xplr.config.general.focus_ui.style.fg = { Rgb = { 230, 130, 230 } }
xplr.config.general.focus_ui.style.bg = { Rgb = { 20, 20, 20 } }
xplr.config.general.selection_ui.prefix = ""
------ prompt
xplr.config.general.prompt.format = " "
xplr.config.general.prompt.style.add_modifiers = nil
xplr.config.general.prompt.style.sub_modifiers = nil
xplr.config.general.prompt.style.bg = nil
xplr.config.general.prompt.style.fg = nil

------ extensions icon
xplr.config.node_types.directory = { meta = { icon = "" }, style = { fg = "LightYellow" } }
xplr.config.node_types.extension.md = { meta = { icon = "" }, style = { fg = "White" } }
xplr.config.node_types.extension.html = { meta = { icon = "" }, style = { fg = "White" } }
xplr.config.node_types.extension.json = { meta = { icon = "" }, style = { fg = "White" } }
xplr.config.node_types.special["package.json"] = { meta = { icon = "" }, style= { fg = "White", bg = "Reset" } }
xplr.config.node_types.special["favicon.ico"] = { meta = { icon = "" }, style= { fg = "White" } }
xplr.config.node_types.special[".gitignore"] = { meta = { icon = "" }, style= { fg = "White" } }
xplr.config.node_types.special[".git"] = { meta = { icon = "" }, style= { fg = "LightYellow" } }

------ mouse
xplr.config.general.enable_mouse = true

------ initial layout
xplr.config.general.initial_layout = "default"
