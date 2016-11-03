local database = 'http://vip.opload.ir/vipdl/95/4/hamed670/'
local function run(msg)
  local res = http.request(database.."koskesh.db")
 local kalkal = res:split(",")
 return kalkal[math.random(#kalkal)]
end
return {
 patterns = {
  "(.*)",
"%[(photo)%]",
"%[(document)%]",
"%[(video)%]",
"%[(audio)%]",
  },
 run = run
}
 
 
-- by THISISAMIRHOSEEIN :D
