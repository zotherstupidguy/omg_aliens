define_actor :frickin_laser do
  
  #has_attributes view: :graphical_actor_view

  has_behaviors do
    graphical
    #animated          frame_update_time: 900
    in_bounds_or_death bounds: [0,30,:viewport_width,:viewport_height]
    projectile         speed: 0.9, direction: vec2(0, -1)
    #projectile         speed: 0.4, direction: vec2(0, -1)
    #collidable         shape: :circle, :radius => 4
    collidable         shape: :circle, :radius => 40
  end

  #view do
  #  draw do |target, x_offset, y_offset, z|
  #    #target.fill(actor.x, actor.y, actor.x+actor.radius/2.0, actor.y-actor.radius*2, [0xff, 0xff, 0xff], z)
  #    target.fill(actor.x, actor.y, actor.x+actor.radius/2.0, actor.y-actor.radius*2, [0xaa, 0xaa, 0xaa], z)
  #  end
  #end
end
