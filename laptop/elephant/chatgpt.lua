Name = "chatgpt"
NamePretty = "ChatGPT"
Icon = "applications-internet"
Description = "Ask ChatGPT"
SearchName = true

function GetEntries()
	return {
		{
			Text = "Ask ChatGPT",
			Subtext = "Open query in ChatGPT",
			Icon = "applications-internet",
			Actions = {
				search = "lua:Search",
			},
		},
	}
end

function Search(value, args, query)
	os.execute("xdg-open 'https://chatgpt.com/?q=" .. query:gsub(" ", "+"):gsub("'", "'\\''") .. "'")
end
