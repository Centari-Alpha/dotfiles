-- NixOS-native LSP & Treesitter configuration for Hex Mecari (Rust + C# + Protobuf + Markdown)
-- On NixOS, Mason's precompiled dynamically linked binaries fail; setting mason = false tells
-- nvim-lspconfig to use the native rust-analyzer provided by 'nix develop' (flake.nix).
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          mason = false,
          settings = {
            ["rust-analyzer"] = {
              cargo = { allFeatures = true },
              checkOnSave = { command = "clippy" },
            },
          },
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "rust",
          "toml",
          "c_sharp",
          "proto",
          "nix",
          "markdown",
          "markdown_inline",
        })
      end
    end,
  },
}
