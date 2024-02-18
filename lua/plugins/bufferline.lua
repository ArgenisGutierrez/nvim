--NOTE: Plugin para crear las tabs de los buffers
--https://github.com/akinsho/bufferline.nvim
return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local bufferline = require('bufferline')
    bufferline.setup({
      highlights = {
        fill = {
          bg = 'NONE',
        },
        background = {
          bg = 'NONE',
        },
        tab = {
          bg = 'NONE',
        },
        tab_selected = {
          bg = 'NONE',
        },
        tab_separator = {
          bg = 'NONE',
        },
        tab_separator_selected = {
          bg = 'NONE',
        },
        tab_close = {
          bg = 'NONE',
        },
        close_button = {
          bg = 'NONE',
        },
        close_button_visible = {
          bg = 'NONE',
        },
        close_button_selected = {
          bg = 'NONE',
        },
        buffer_visible = {
          bg = 'NONE',
        },
        buffer_selected = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        numbers = {
          bg = 'NONE',
        },
        numbers_visible = {
          bg = 'NONE',
        },
        numbers_selected = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        diagnostic = {
          bg = 'NONE',
        },
        diagnostic_visible = {
          bg = 'NONE',
        },
        diagnostic_selected = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        hint = {
          bg = 'NONE',
        },
        hint_visible = {

          bg = 'NONE',
        },
        hint_selected = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        hint_diagnostic = {
          bg = 'NONE',
        },
        hint_diagnostic_visible = {
          bg = 'NONE',
        },
        hint_diagnostic_selected = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        info = {
          bg = 'NONE',
        },
        info_visible = {
          bg = 'NONE',
        },
        info_selected = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        info_diagnostic = {
          bg = 'NONE',
        },
        info_diagnostic_visible = {
          bg = 'NONE',
        },
        info_diagnostic_selected = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        warning = {
          bg = 'NONE',
        },
        warning_visible = {
          bg = 'NONE',
        },
        warning_selected = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        warning_diagnostic = {
          bg = 'NONE',
        },
        warning_diagnostic_visible = {
          bg = 'NONE',
        },
        warning_diagnostic_selected = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        error = {
          bg = 'NONE',
        },
        error_visible = {
          bg = 'NONE',
        },
        error_selected = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        error_diagnostic = {
          bg = 'NONE',
        },
        error_diagnostic_visible = {
          bg = 'NONE',
        },
        error_diagnostic_selected = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        modified = {
          bg = 'NONE',
        },
        modified_visible = {
          bg = 'NONE',
        },
        modified_selected = {
          bg = 'NONE',
        },
        duplicate_selected = {
          bg = 'NONE',
          italic = true,
        },
        duplicate_visible = {
          bg = 'NONE',
          italic = true,
        },
        duplicate = {
          bg = 'NONE',
          italic = true,
        },
        separator_selected = {
          bg = 'NONE',
        },
        separator_visible = {
          bg = 'NONE',
        },
        separator = {

          bg = 'NONE',
        },
        indicator_visible = {

          bg = 'NONE',
        },
        indicator_selected = {

          bg = 'NONE',
        },
        pick_selected = {

          bg = 'NONE',
          bold = true,
          italic = true,
        },
        pick_visible = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        pick = {
          bg = 'NONE',
          bold = true,
          italic = true,
        },
        offset_separator = {
          bg = 'NONE',
        },
        trunc_marker = {
          bg = 'NONE',
        }
      },

      options = {
        mode = "buffers",
        style_preset = bufferline.style_preset.minimal,
        themable = true,
        numbers = "none",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
          style = "icon",
          icon = "󱞡",
        },
        buffer_close_icon = '󰛉',
        modified_icon = '󱦣',
        close_icon = '󱎘',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 18,
        max_prefix_length = 15,
        truncate_names = true,
        tab_size = 18,
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = false,
        color_icons = true,
        get_element_icon = function(element)
          local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
          return icon, hl
        end,
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true,
        persist_buffer_sort = true,
        move_wraps_at_ends = false,
        separator_style = "thin",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { 'close' }
        },
        sort_by = 'insert_after_current',
      }
    })
  end
}
