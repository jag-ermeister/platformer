function _init()
  player = {
    sp = 1,
    x = 16,
    y = 112,
    old_x = 16,
    old_y = 112,
    w = 8,
    h = 8,
    dx = 0,
    dy = 0,
    max_dx = 2,
    max_dy = 3,
    acc = 0.5, -- horizontal acceleration
    boost = 4, -- vertical acceleration
    anim = 0,
    running = false,
    jumping = false,
    falling = false,
    sliding = false,
    landed = false
  }
end
  
function _update()
  player.old_x = player.x
  player.old_y = player.y
  
  if btn(0) then --left
    player.x -=1
  end
  if btn(1) then --right
    player.x +=1
  end
  if btn(2) then --up
    player.y -=1
  end
  if btn(3) then --down
    player.y +=1
  end

  if map_collide(player) then
    player.x = player.old_x
    player.y = player.old_y
  end
end

function map_collide(obj)
  --mget gives us the sprite assigned to a cell on the map
  -- must convert pixel to cell
  s1 = mget(obj.x / obj.w, obj.y / obj.h)
  s2 = mget((obj.x + obj.w - 1) / obj.w, obj.y / obj.h)
  s3 = mget(obj.x / obj.w, (obj.y + obj.w - 1) / obj.h)
  s4 = mget((obj.x + obj.w - 1) / obj.w, (obj.y + obj.w - 1) / obj.h)
  
  if fget(s1, 0)
  or fget(s2, 0)
  or fget (s3, 0)
  or fget (s4, 0) then
    return true
  else
    return false
  end
end
 
function _draw()
  cls(12)
  print("")
  print("")
  print("  Yo, I'm a ninja.")
  print("  I'm a motha fuckin' ninja.")
  palt(0, false)
  palt(12, true)
  map(0,0)
  spr(1, player.x, player.y)
end