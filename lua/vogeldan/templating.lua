vim.api.nvim_create_autocmd("BufNewFile", {
    group = vim.api.nvim_create_augroup("templates", { clear = true }),
    desc = "Load template file",
    callback = function(args)
        local home = os.getenv("HOME")
        local fname = vim.fn.fnamemodify(args.file, ":t")
        local ext = vim.fn.fnamemodify(args.file, ":e")
        local candidates = { fname, ext }
        local uv = vim.uv
        print("Filename: ", fname)
        for _, candidate in ipairs(candidates) do
            local tmpl = table.concat({ home, "/.config/nvim/templates/", candidate, ".tpl"})
            if uv.fs_stat(tmpl) then
                vim.cmd("0r ".. tmpl)
                return
            end
        end
        for _, candidate in ipairs(candidates) do
            local tmpl = table.concat({ home, "/.config/nvim/templates/", candidate, ".stpl"})
            local f = io.open(tmpl, "r")
            if f then
                local content = f:read("*a")
                print(content)
                vim.snippet.expand(content)
                return
            end
        end
    end
})
