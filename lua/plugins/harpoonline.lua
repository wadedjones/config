return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'abeldekat/harpoonline', version = '*' },
  config = function()
    local Harpoonline = require 'harpoonline'
    ---@type HarpoonlineBuiltinOptionsExtended
    local opts = {
      empty_slot = ' ',
    }
    Harpoonline.setup {
      custom_formatter = Harpoonline.gen_override('extended', opts),
      on_update = function()
        require('lualine').refresh()
      end,
    }

    local lualine_c = { Harpoonline.format, 'filename' }
    require('lualine').setup {
      sections = { lualine_c = lualine_c },
    }
  end,
}
