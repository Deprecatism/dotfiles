return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      ["kdl"] = { "kdlfmt" },
    },
    formatters = {
      kdlfmt = {
        args = { "format", "--kdl-version", "v2", "--stdin" },
        stdin = true,
      },
    },
  },
}
