function love.load()
  tilemap = {
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 2, 2, 2, 2, 2, 2, 2, 2, 1},
    {1, 2, 3, 4, 5, 5, 4, 3, 2, 1},
    {1, 2, 2, 2, 2, 2, 2, 2, 2, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
  }
  colors = {
    {255, 255, 255},
    {255, 0, 0},
    {255, 0, 255},
    {0, 0, 255},
    {0, 255, 255}
  }
end

function love.draw()
  for i,row in ipairs(tilemap) do
    for j,tile in ipairs(row) do
      --is tile not zero?
      if tile ~= 0 then
        --set the color based on the tile number
        love.graphics.setColor(colors[tile])
        --draw the tile
        love.graphics.rectangle("fill", j * 25, i * 25, 25, 25)
      end
    end
  end
end