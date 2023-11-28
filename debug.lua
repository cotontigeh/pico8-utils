-- DEBUG

function init_debug()
  debug={}
end

function draw_debug()
  local y=0
  for i in all(debug) do
    print(i,0,y,7)
    y+=6
  end
end