### TODO
--------
- Clone the first level of Mario
- https://nerdyteachers.com/Explain/Platformer/

### steps
---------
- simple movement (move everywhere, no gravity)
- simple map collision
    - going with hit box on up/down/left/right of player
    - advanced movement will depend on this map collision
    - mark map tiles that should be solid
    - detect if player sprite is overlapping a solid map tile
    - reset player to old position if colliding with solid map
- add better movement
    - physics
    - check map collision in player_update for more granular handling of collision situations
    - physics
- player animation
- camera control