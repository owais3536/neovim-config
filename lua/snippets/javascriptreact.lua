local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function get_filename(_, snip)
  local name = vim.fn.expand("%:t:r")
  return name
end

return {
  s("comp", {
    t({
      "const ",
    }),
    f(get_filename, {}),
    t({
      " = () => {",
      "\treturn (",
      "\t\t<div>",
    }),
    i(1,"Hello World!"),
    t({"</div>",
      "\t);",
      "};",
      "",
    }),
    t("export default "),
    f(get_filename, {}), t(";")
  }),
}

