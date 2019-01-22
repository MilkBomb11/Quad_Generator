function generateQuads(columns, rows, quadWidth, quadHeight)
  local quads = {}
  local sheetWidth = columns*quadWidth
  local sheetHeight = rows*quadHeight

  for currentRow=0,rows-1 do
    for currentColumn=0,columns-1 do
      local x = currentColumn*quadWidth
      local y = currentRow*quadHeight
      table.insert(quads, love.graphics.newQuad(x, y, quadWidth, quadHeight, sheetWidth, sheetHeight))
    end
  end

  return quads
end
