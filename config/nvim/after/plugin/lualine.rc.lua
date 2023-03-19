local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    -- section_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    -- component_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    -- disabled_filetypes = { 'neo-tree' },
    -- ignore_focus = { 'neo-tree' },
    disabled_filetypes = { 'neo-tree' },
    ignore_focus = { 'neo-tree' },
  },
  sections = {
    lualine_a = {
      { 'mode', fmt = function(str) return str:sub(1, 1) end }
    },
    lualine_b = {
      {
        'filetype',
        colored = true,
        -- icon_only = true,
        icon_only = false,
        icon = { align = 'left' },
      }
    },
    lualine_c = {},
    lualine_x = {
      {
        'diagnostics',
        sources = {
          "nvim_diagnostic"
        },
        symbols = {
          error = ' ',
          warn = ' ',
          info = ' ',
          hint = ' '
        }
      }
    },
    lualine_y = {
      { 'diff',
        colored = true, -- Displays a colored diff status if set to true
        diff_color = {
          -- Same color values as the general color option can be used here.
          added    = 'DiffAdd', -- Changes the diff's added color
          modified = 'DiffChange', -- Changes the diff's modified color
          removed  = 'DiffDelete', -- Changes the diff's removed color you
        },
        symbols = { added = '+', modified = '~', removed = '-' }, -- Changes the symbols used by the diff.
        source = nil, -- A function that works as a data source for diff.
      }
    },
    lualine_z = {
      {
        'branch',
        color = { fg = '#A3BE8C', bg = '#353B49', gui = 'bold' },
        icon = '',
        fmt = function(str) return str:upper() end
      }
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {
    'fugitive'
  }
}
