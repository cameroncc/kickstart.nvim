-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'itchyny/vim-qfedit',
    config = function()
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'qf',
        callback = function()
          vim.keymap.set('n', 'dd', '"_dd', { buffer = true, noremap = true })
        end,
      })
    end,
  },
}
