function love.load()
  image = love.graphics.newImage("img/tileset.png")
  local image_width = image: getWidth()
  local image_height = image:getHeight()
  width = (image_width/3) - 2 
  height = (image_height/2) -2
  
  quads = {}
  
  for i=0,1 do
    for j=0,2 do
      table.insert(quads, love.graphics.newQuad(1 + j * (width + 2), 1 + i * (height + 2), width, height, image_width, image_height))
    end
  end
  
  tilemap = {
    {1, 6, 6, 2, 1, 6, 6, 2},
    {3, 0, 0, 4, 5, 0, 0, 3},
    {3, 0, 0, 0, 0, 0, 0, 3},
    {4, 2, 0, 0, 0, 0, 1, 5},
    {1, 5, 0, 0, 0, 0, 4, 2},
    {3, 0, 0, 0, 0, 0, 0, 3},
    {3, 0, 0, 1, 2, 0, 0, 3},
    {4, 6, 6, 5, 4, 6, 6, 5}
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
        --draw the right quad
        love.graphics.draw(image, quads[tile], j * width, i * height)
      end
    end
  end
end