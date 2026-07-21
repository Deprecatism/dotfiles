return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      ["kdl"] = { "kdlfmt" },
    },
    formatters = {
      kdlfmt = {
        args = { "format", "--kdl-version", "v1", "--stdin" },
        stdin = true,
      },
    },
  },
}
