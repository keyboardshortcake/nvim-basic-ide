local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
	return
end
project.setup({

	-- detection_methods = { "lsp", "pattern" }, -- NOTE: lsp detection will get annoying with multiple langs in one project
	detection_methods = { "pattern" },

	-- patterns used to detect root dir, when **"pattern"** is in detection_methods
  -- added by cake. added tsconfig for work angualr projects, some of them at least
	patterns = { ".git", "Makefile", "package.json" , "tsconfig.app.json"}, 
})

local tele_status_ok, telescope = pcall(require, "telescope")
if not tele_status_ok then
	return
end

telescope.load_extension('projects')
