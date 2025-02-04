local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"

telescope.setup {
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },

    mappings = {
      i = {
        -- ["<Down>"] = actions.cycle_history_next,
        ["<Down>"] = actions.move_selection_next,
        -- ["<Up>"] = actions.cycle_history_prev,
        ["<Up>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },

  -- I don't think this fzf integration is working. I'm probably doing it all wrong
  -- extensions = {
  --   fzf = {
  --     fuzzy = true,                    -- false will only do exact matching
  --     override_generic_sorter = true,  -- override the generic sorter
  --     override_file_sorter = true,     -- override the file sorter
  --     -- case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
  --     case_mode = "respect_case",        -- or "ignore_case" or "respect_case"
  --                                      -- the default case_mode is "smart_case"
  --   }
  -- }
}

-- telescope.load_extension "fzf"
-- require('telescope').load_extension('fzf')
