-- vim.api.nvim_create_augroup('core', { clear = true })
-- vim.api.nvim_create_autocmd({ 'BufDelete' },
--     {
--         pattern = '*',
--         group = 'core',
--         callback = function()
--             print(vim.inspect(vim.fn.getbufinfo()))
--             if #vim.fn.getbufinfo() == 0 then
--                 print('Hello world')
--             end
--         end
--     }
-- )
--
local dap = require('dap')
dap.load_lanchjs = function(path, type_to_filetypes)
    type_to_filetypes = vim.tbl_extend('keep', type_to_filetypes or {}, dap.type_to_filetypes)
    local resolved_path = path or (vim.fn.getcwd() .. '/.vscode/launch.json')
    if not vim.loop.fs_stat(resolved_path) then
        return
    end
    local lines = {}
    for line in io.lines(resolved_path) do
        if not vim.startswith(vim.trim(line), '//') then
            table.insert(lines, line)
        end
    end
    local contents = table.concat(lines, '\n')
    local configurations = dap._load_json(contents)

    assert(configurations, "launch.json must have a 'configurations' key")
    for _, config in ipairs(configurations) do
        assert(config.type, "Configuration in launch.json must have a 'type' key")
        assert(config.name, "Configuration in launch.json must have a 'name' key")
        local filetypes = type_to_filetypes[config.type] or { config.type, }
        for _, filetype in pairs(filetypes) do
            local dap_configurations = dap.configurations[filetype] or {}
            for i, dap_config in pairs(dap_configurations) do
                if dap_config.name == config.name then
                    -- remove old value
                    table.remove(dap_configurations, i)
                end
            end
            if config.envFile ~= nil then
                local file = io.read(config.envFile, "*a")
                file:close()
                for line in io.lines(file) do
                    local keys = string.gmatch(line, "=")
                    config.env[keys[0]] = keys[1]
                end
            end
            table.insert(dap_configurations, config)
            dap.configurations[filetype] = dap_configurations
        end
    end
end
