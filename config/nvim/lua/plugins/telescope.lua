require('telescope').setup{
  defaults = {
        layout_config = {
            prompt_positiotn = "top",
            preview_cutoff = 100,
            width = 0.8,
        },

        find_command = {
            'rg', '--no-heading', '--with-filename','--line-number','--column','--smart-case'
        },
        prompt_prefix = "🔍 ",
        selection_caret = "  ",

        mappings = {
              i = {
                ["<C-h>"] = "which_key"
              }
        },
  },
}
