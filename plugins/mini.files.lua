return {
    'nvim-mini/mini.files',
    version = '*',
    config = function()
        local mf = require("mini.files")

        mf.setup()

        -- Toggle function
        local function toggle_mini_files()
          if mf.get_explorer_state() ~= nil then
            -- Explorer is open → close it
            mf.close()
          else
            -- Explorer is closed → open it
            mf.open()
          end
        end

        vim.keymap.set("n", "<leader>e", toggle_mini_files, {
          desc = "Toggle MiniFiles",
        })
    end,
}
