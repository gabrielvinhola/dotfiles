return {
    'L3MON4D3/LuaSnip',
    version = "2.*",
    build = "make install_jsregexp",
    config = function()
        local ls = require("luasnip")
        local s = ls.snippet
        -- local sn = ls.snippet_node
        local t = ls.text_node
        local i = ls.insert_node
        -- local f = ls.function_node
        -- local c = ls.choice_node
        -- local d = ls.dynamic_node
        -- local r = ls.restore_node
        ls.setup({
            history = true,
            update_events = "TextChanged,TextChangedI",
            delete_check_events = "TextChanged",
        })
        ls.add_snippets("rust", {
            s("rlc", {
                t({"#[component]", "pub fn "}),
                i(1),
                t("(cx: Scope) -> impl IntoView { "),
                i(2),
                t(" }"),
            }),
            s("afn", {
                t({"async fn "}),
                i(1),
                t("() "),
                i(2),
                t(" { "),
                i(3),
                t(" }"),
            }),
        })
        vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
    end
}
