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
print("Pomodoro Timer in Lua by payroll-beats\n ")
print("github https://github.com/payroll-beats \n \n")
print("Set the minutes for your timer")
min = io.read()
cmd("clear")

function secondTimer()
	for i = sec,-1,-1 do
	print("Pomodoro Timer")
	print("Minutes  Seconds")
	print(min.."    :    "..i)

	sleep(1)
		if i == 0 then 
		i  = sec,0,-1;min =  math.floor(min) - 1 
		secondTimer()
		end
	cmd("clear")
	end
end

secondTimer()
