pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
function initdot(x,y)
	local dot = {}
	dot.x = x
	dot.y = y
	dot.clr = rnd(16)-1
	dot.draw = function(this)
		pset(this.x,this.y,this.clr)
	end
	dot.moveran = function(this)
		this.x += rnd(2)-1
		this.y += rnd(2)-1
		if (this.x) > 127 then
			this.x -= 127
		elseif (this.x) < 0 then
			this.x += 127
		end
		if (this.y) > 127 then
			this.y -= 127
		elseif (this.y) < 0 then
			this.y += 127
		end
	end
	return dot
end

--init
function _init()
	dots = {}
	for a=1,2500 do
		add(dots,initdot(64,64))
	end
end
--update
function _update()
	for a in all(dots) do 
		a:moveran()
	end
end
--draw
function _draw()
	cls()
	for a in all(dots) do
		a:draw()
	end
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
