
RegisterServerEvent('hashgrabber:addtofile')
AddEventHandler('hashgrabber:addtofile', function(hash,Model,PlayerName)
local Output
	local OldFile = LoadResourceFile(GetCurrentResourceName(), 'Saved' .. GetOSSep() .. PlayerName .. ' - Hashes.txt')
	if OldFile == nil or OldFile == '' then
		Output = 'Hash = ' .. hash .. ', Model = ' .. Model
	else
		Output = OldFile .. '\n Hash = ' .. hash .. ', Model = ' .. Model
	end
	local UnusedBool = SaveResourceFile(GetCurrentResourceName(), 'Saved' .. GetOSSep() .. PlayerName .. ' - Hashes.txt', Output, -1)
end)


function GetOSSep()
	if os.getenv('HOME') then
		return '/'
	else
		return '\\'
	end
end













