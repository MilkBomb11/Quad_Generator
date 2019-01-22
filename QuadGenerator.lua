function generateQuads(columns, rows, quadWidth, quadHeight, sheetWidth, sheetHeight)
  local quads = {}
  local sheetWidth = sheetWidth or columns*quadWidth
  local sheetHeight = sheetHeight or rows*quadHeight

  for currentRow=0,rows-1 do
    for currentColumn=0,columns-1 do
      local x = currentColumn*quadWidth
      local y = currentRow*quadHeight
      table.insert(quads, love.graphics.newQuad(x, y, quadWidth, quadHeight, sheetWidth, sheetHeight))
    end
  end

  return quads
end
