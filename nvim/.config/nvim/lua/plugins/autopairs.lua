return {
    'windwp/nvim-autopairs',
    config = function()
        require('nvim-autopairs').setup {}
    end,
    event = 'InsertEnter',
    dependencies = {
        'hrsh7th/nvim-cmp', -- Required for integration with nvim-cmp
    },
}