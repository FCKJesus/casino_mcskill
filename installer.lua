local shell = require("shell")
local fs = require("filesystem")


local applications = {
  { "https://raw.githubusercontent.com/FCKJesus/casino_mcskill/main/event.lua", "lib/event.lua" },
  { "https://raw.githubusercontent.com/FCKJesus/casino_mcskill/main/roulette.lua", "roulette.lua" },
}


for i = 1, #applications do
  print("Устанавливаю " .. applications[i][2])
  fs.makeDirectory(fs.path(applications[i][2]) or "")		
  shell.execute("wget " .. applications[i][1] .. " " .. applications[i][2] .. " -fQ")
  os.sleep(0.3)
end
print("Готово")
