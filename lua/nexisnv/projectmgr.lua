return {
	'charludo/projectmgr.nvim',
	lazy = false, -- important!
	config = function()
    local possession = _G.possession

    require("projectmgr").setup({
        autoload_project = true,
        open_last_project = true,
        show_project_icons = true,
        telescope = true,
        session_support = "possession",

        hooks = {
		on_project_opened = function(project)
		    local possession = require("possession")
		    local session_name = project.name -- Nutze den Projektnamen als Session-Namen
		    local sessions = possession.session.list()


		    vim.cmd("Neotree source=filesystem reveal=true" .. project.path)

		    if sessions[session_name] then
			-- Falls eine Session existiert, lade sie
			possession.session.load(session_name)
		    else
			-- Falls keine Session existiert, erstelle eine neue und speichere sie
			possession.session.save(session_name)
			print("Neue Session für Projekt '" .. session_name .. "' erstellt und gespeichert.")
		    end
		end,
        },
    })


vim.api.nvim_create_autocmd({"VimLeavePre"}, {
    callback = function()
        local possession = require("possession")
        local projectmgr = require("projectmgr.file_adapter")
        local project = projectmgr.get_current_project()

        if project then
            possession.session.save(project.name) -- Speichert die Session mit dem Projektnamen
        end
    end
})
end



}
