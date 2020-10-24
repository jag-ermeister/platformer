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
    max_dx = 2, -- max sprinting speed
    max_dy = 3, --terminal velocity
    acc = 0.5, -- horizontal acceleration
    boost = 4, -- vertical acceleration
    anim = 0,
    running = false,
    jumping = false,
    falling = false,
    sliding = false,
    landed = false,
    flp = false
  }
  gravity = 0.3
  friction = 0.85
end
  
function _update()
  player.old_x = player.x
  player.old_y = player.y

  player_update()
  player_animate()
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
  spr(player.sp, player.x, player.y, 1, 1, player.flp)
end
