return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      -- If you have nodejs and yarn installed, use this:
      -- vim.fn.system("cd app && yarn install")
      -- If you don't have nodejs and yarn, use the pre-built utility:
      vim.fn["mkdp#util#install"]()
    end,
    config = function()
      vim.g.mkdp_filetypes = { "markdown" }
      -- Optional: Auto-start preview when opening a markdown file
      -- vim.g.mkdp_auto_start = 1
      -- Optional: Auto-close preview when leaving a markdown buffer
      -- vim.g.mkdp_auto_close = 1
      -- Optional: Set a default theme (e.g., 'dark' or 'light')
      -- vim.g.mkdp_theme = 'dark'
      -- For more configuration options, see :help mkdp-options
    end,
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview", ft = "markdown" },
    },
  },
}
