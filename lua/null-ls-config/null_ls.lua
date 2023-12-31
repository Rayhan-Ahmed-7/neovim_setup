local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.eslint,
        null_ls.builtins.formatting.dart_format,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.diagnostics.npm_groovy_lint,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.completion.spell,
    },
})

