if true then
  return {}
end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "dmmulroy/ts-error-translator.nvim",
  config = function()
    require("ts-error-translator").setup()
  end,
}
