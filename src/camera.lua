--[[
  camera window
  - the camera window is 32 pixels wide, in the center of the 128 pixel screen
  |---48px---|--32px--|---48px---|
]]

function camera_init()
  cam = {
    x = 0,
    y = 0,
    window_size = 32,
    max_x = 80,
    min_x = 48
  }
end

function camera_update()
  debug_camera("before update")

  if player.x > cam.max_x then
    cam.x = player.x - 80
    cam.max_x = player.x
    cam.min_x = player.x - cam.window_size
  end

  if player.x < cam.min_x then
    cam.x = player.x - 48
    cam.max_x = player.x + cam.window_size
    cam.min_x = player.x
  end

  debug_camera("after_update")

  if cam.x < 0 then
    cam.x = 0
  end

  camera(cam.x, 0)
end

function debug_camera(str)
  if false then
    printh(str)
    printh("player.x = "..player.x)
    printh("cam.min_x = "..cam.min_x)
    printh("cam.max_x = "..cam.max_x)
    printh("cam.x = "..cam.x)
  end
end
