function love.load()
  tilemap = {1, 0, 0, 1, 1, 0, 1, 1, 1, 0}
end

function love.draw()
  --ipairs let you loop through a table easily
  --i is the loop iteration, v is the value at position i
  for i,v in ipairs(tilemap) do
    if v == 1 then
      love.graphics.rectangle("fill", i * 25, 100, 25, 25)
    end
  end
end
