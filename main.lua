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
  
  player = {
    image = love.graphics.newImage("img/player.png"),
    tile_x = 2,
    tile_y = 2
    }
end

function love.keypressed(key)
    local x = player.tile_x
    local y = player.tile_y

    if key == "left" then
        x = x - 1
    elseif key == "right" then
        x = x + 1
    elseif key == "up" then
        y = y - 1
    elseif key == "down" then
        y = y + 1
    end

    if isEmpty(x, y) then
        player.tile_x = x
        player.tile_y = y
    end
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
  --drawing the player
  love.graphics.draw(player.image, player.tile_x * width, player.tile_y * height)
end

function isEmpty(x,y)
  return tilemap[y][x] == 0
end