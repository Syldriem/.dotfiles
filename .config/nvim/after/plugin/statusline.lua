
--local VimWithMe = require("vim-with-me")
--local function hello()
--    local status = VimWithMe.StatusVimWithMe()
--    if status == VimWithMe.ClientStopped then
--        return status
--    end

--    local point_count, point_expected = VimWithMe.get_points()
--    return string.format("%d / %d", point_count, point_expected)
--end

local sections = { lualine_a = {'mode'},
lualine_b = {'branch', 'diff', 'diagnostics'},
lualine_c = {'filename'},
lualine_y = {'progress'},
lualine_z = {'location'},
lualine_x = {'filetype'}
}

require('lualine').get_config()

require('lualine').setup({
    sections = sections,
    options = {
        icons_enabled = true,
    }
})
