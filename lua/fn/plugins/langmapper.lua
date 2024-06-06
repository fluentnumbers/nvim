return {
  'Wansmer/langmapper.nvim',
  lazy = false,
  priority = 500, -- High priority is needed if you will use `autoremap()`
  config = function()
    require('langmapper').setup({--[[ your config ]]})
  end,
}
