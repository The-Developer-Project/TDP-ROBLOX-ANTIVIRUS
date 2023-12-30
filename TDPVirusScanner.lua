local toolbar = plugin:CreateToolbar("TDPVirusScanner")

local pluginButton = toolbar:CreateButton(
	"Scan",
	"Scans For Viruses",
	"rbxassetid://12162246252")

pluginButton.Click:Connect(function()
	print('Scanning...')
	local hits = 0
	for _, v in ipairs(game:GetDescendants()) do
		local s, e = pcall(function() if v:IsA('Script') or v:IsA('ModuleScript') or v:IsA('LocalScript') or v:IsA('BaseScript') then
				if v.Source:match(':Kick') then 
					print('hit at: '..v:GetFullName())
					hits += 1
				end 
			end 
		end)
	end
	print('Finished Scan, Hits:'..hits)
end)
