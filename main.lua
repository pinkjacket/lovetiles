function love.load()
  tilemap = {
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 2, 2, 2, 2, 2, 2, 2, 2, 1},
    {1, 2, 3, 4, 5, 5, 4, 3, 2, 1},
    {1, 2, 2, 2, 2, 2, 2, 2, 2, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
    }
end

function love.draw()
  for i,row in ipairs(tilemap) do
    for j,tile in ipairs(row) do
      --is tile not zero?
      if tile ~= 0 then
        --set the color based on the tile number
        if tile == 1 then
          --setColor uses RGB, optional A
          love.graphics.setColor(255, 255, 255)
        elseif tile == 2 then
          love.graphics.setColor(255, 0, 0)
        elseif tile == 3 then
          love.graphics.setColor(255, 0, 255)
        elseif tile == 4 then
          love.graphics.setColor(0, 0, 255)
        elseif tile == 5 then
          love.graphics.setColor(0, 255, 255)
        end
        --draw the tile
        love.graphics.rectangle("fill", j * 25, i * 25, 25, 25)
      end
    end
  end
end
