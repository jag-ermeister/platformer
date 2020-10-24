function _init()
  player = {
    sp=1,
    x=16,
    y=112,
    w=8,
    h=8,
    dx=0,
    dy=0,
    max_dx=2,
    max_dy=3,
    acc=0.5, -- horizontal acceleration
    boost=4, -- vertical acceleration
    anim=0,
    running=false,
    jumping=false,
    falling=false,
    sliding=false,
    landed=false
  }
end
  
function _update()
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