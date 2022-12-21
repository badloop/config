require("bufferline").setup {
    options = {
        buffer_close_icon = '',
        mode = 'buffers',
        --        separator_style = 'slant',
        indicator = {
            style = 'underline',
        },
        offsets = {
            {
                filetype = "neo-tree",
                text = "File Explorer",
                separator = true,
                padding = 1
            }
        }
    },
}
