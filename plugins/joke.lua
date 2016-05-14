local database = 'http://vip.opload.ir/vipdl/94/11/amirhmz/'
local function run(msg)
	local res = http.request(database.."joke.db")
	local joke = res:split(",") 
	return joke[math.random(#joke)]
end
--Joke Plugin v2.0 By @kiavaprotection
return {
	description = "1000 Persian Joke",
	usage = "#جوک : send random joke",
	patterns = {
		"^[/#!]جوک$",
		"^(جوک)$"
		},
	run = run
}
