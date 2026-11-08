Name = "brave"
NamePretty = "Brave Search"
Icon = "web-browser"
Description = "Search Brave"
SearchName = true

function GetEntries()
	return {
		{
			Text = "Search Brave",
			Subtext = "Web search",
			Icon = "web-browser",
			Actions = {
				search = "lua:Search",
			},
		},
	}
end

function Search(value, args, query)
	os.execute("xdg-open 'https://search.brave.com/search?q=" .. query:gsub(" ", "+"):gsub("'", "'\\''") .. "'")
end
