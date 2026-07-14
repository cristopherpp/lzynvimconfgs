return {
  {
    "windwp/nvim-ts-autotag",
    opts = {
      opts = {
        enable_close = true,
        enable_rename = false,
        enable_close_on_slash = false,
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}

      vim.list_extend(opts.ensure_installed, {
        -- web development
        "astro",
        "html",
        "css",
        "scss",

        -- JavaScript, JSX, TypeScript and TSX
        "javascript",
        "typescript",
        "tsx",
        "jsdoc",

        -- Vue
        "vue",

        -- C and C++
        "c",
        "cpp",
        "cmake",
        "make",

        -- config
        "json",
        "json5",
        "yaml",
        "toml",

        -- Markdown
        "markdown",
        "markdown_inline",

        -- Shell and tools
        "bash",
        "dockerfile",
        "git_config",
        "git_rebase",
        "gitcommit",
        "gitignore",

        -- Neovim
        "lua",
        "luadoc",
        "vim",
        "vimdoc",
        "query",
        "regex",
      })
    end,
  },
}
