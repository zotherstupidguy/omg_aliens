require 'actor'

class FrickinLaserView < ActorView
  def draw(target, x_offset, y_offset)
    target.draw_line([actor.x, actor.y], [actor.x, actor.y-actor.length], [0xff, 0xff, 0xff])
  end
end

class FrickinLaser < Actor
  has_behavior :updatable
  attr_accessor :length
  def setup
    @length = 7
  end
  
  def update(time_delta)
    velocity = 10
    @y -= velocity
    
    remove_self if @y < 30
  end
end