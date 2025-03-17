return {
  'numToStr/Comment.nvim',
  opts = {
    extra = {
      eol = 'gcT'
    }
  },
  config = function(_, opts)
    require("Comment").setup(opts)
  end,
}
