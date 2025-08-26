return {
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    dependencies = {
      "rafamadriz/friendly-snippets"
    },
    -- load snippets from path
    config = function()
      require("luasnip.loaders.from_lua").lazy_load({
        paths = "~/.config/nvim/lua/snippets"
      })
    end
  },
}
