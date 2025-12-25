return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
  require("bufferline").setup({
  options = {
    mode = "buffers",
    close_command = "bdelete! %d",
    left_mouse_command = "bdelete! %d",
    indicator = {
      icon = "| ",
      style = "icon"
    },
    buffer_close_icon = "x",
    modified_icon = "● ",
    close_icon = "x ",
    max_name_length = 12,
    max_prefix_length = 15,
    truncate_names = true,
    tab_size = 18,
    diagnostics = "nvim_lsp",
    offsets = {
        {
            filetype = "neo-tree",
            text = "File Explorer",
            heighlight = "Directory",
            text_align = "left",
            separator = true
        }
    },
      color_icons = true,
      separator_style = "slant",
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_tab_indicators = true,
      always_show_bufferline = true,
    },
  })
end,
}
