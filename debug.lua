-- DEBUG
-- v1.0.1

function init_debug()
  debug={}
  s_debug={}
end

function draw_debug()
  system_debug()
  local y=24
  for i in all(debug) do
    print(i,0,y,7)
    y+=6
  end
end

function system_debug()
  local y=0
  for i in all(s_debug) do
    print(i,0,y,15)
    y+=6
  end
end

function update_debug()
  s_debug[1]="mem: "..stat(0)*100/2048 .."%"
  s_debug[2]="cpu: "..stat(1)*100 .."%"
  s_debug[3]="fps: "..flr(stat(7))
end