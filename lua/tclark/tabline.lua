vim.o.tabline = '%!v:lua.TabLine()'

function TabLine()
  local s = ""
  for i = 1, vim.fn.tabpagenr('$') do
    local winnr = vim.fn.tabpagewinnr(i)
    local buflist = vim.fn.tabpagebuflist(i)
    local bufnr = buflist[winnr]
    local bufname = vim.fn.bufname(bufnr)
    local tabnr = tostring(i)

    if bufname == "" then bufname = "[No Name]" end
    if i == vim.fn.tabpagenr() then
      s = s .. "%#TabLineSel#" .. " " .. tabnr .. ": " .. vim.fn.fnamemodify(bufname, ":t") .. " "
    else
      s = s .. "%#TabLine#" .. " " .. tabnr .. ": " .. vim.fn.fnamemodify(bufname, ":t") .. " "
    end
  end
  s = s .. "%#TabLineFill#"
  return s
end

