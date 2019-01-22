# Quad_Generator
A function that will generate quads according to the inputs</br>
This is used for the LÖVE framework</br>
Open up the "QuadGenerator.lua" file and press the "Raw" button and copy+paste the code into your script to use it</br>

<code>
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
</code>
