Name = "virustotal"
NamePretty = "VirusTotal"
Icon = "security-high"
Description = "Search VirusTotal"
SearchName = true

function GetEntries()
	return {
		{
			Text = "Search VirusTotal",
			Subtext = "Hash / URL / IP / domain",
			Icon = "security-high",
			Actions = {
				search = "lua:Search",
			},
		},
	}
end

function Search(value, args, query)
	os.execute("xdg-open 'https://www.virustotal.com/gui/search/" .. query:gsub("'", "'\\''") .. "'")
end
