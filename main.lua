function love.load()
  tilemap = {
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 1, 1, 1, 1, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
    }
end

function love.draw()
  --done without ipairs
  --for i=1 through the number of values in tilemap
  for i=1,#tilemap do
    --for j through the number of values in the row
    for j=1,#tilemap[i] do
      --if the value at row i column j is 1
      if tilemap[i][j] == 1 then
        --draw rectangle
        love.graphics.rectangle("fill", j * 25, i * 25, 25, 25)
      end
    end
  end
end