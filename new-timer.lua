#!/usr/bin/lua

local min
local sec = 59
local clock = os.clock
local cmd = os.execute
function sleep(n) -- number of seconds for sleep
	local t0 = os.clock()
	while clock() - t0 <= n do 
	end
end

cmd("clear")
function intro()
print("Pomodoro Timer in Lua by payroll-beats\n ")
print("github https://github.com/payroll-beats \n \n")
end
intro()
print("Set the minutes for your timer")
min = io.read()
cmd("clear")

function secondTimer()

--While timer is still going do 
while min ~= -1 do 

		--Seconds go down by -1 for each second 
		for i = sec,-1,-1 do
		print("Pomodoro Timer")
		print("Minutes  Seconds")
		print(min.."    :    "..i)

		--Trying to change heander of terminal but bash and lua don't go together too well
		--os.execute("PROMPT_COMMAND=echo -ne"\\033\]0;..print(min.."    :    "..i\\007"'
		sleep(1)

			--When seconds reaches 0 then set the seconds back to 59 and subtract 1 from the minutes
			if i == 0 then 
			i  = sec,0,-1;min =  math.floor(min) - 1 
			secondTimer()
			end
		cmd("clear")
		end
	end
end

secondTimer()
intro()
print("Time's up")
