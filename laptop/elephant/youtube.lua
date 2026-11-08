Name = "youtube"
NamePretty = "YouTube"
Icon = "multimedia-video-player"
Description = "Search YouTube"
SearchName = true

function GetEntries()
	return {
		{
			Text = "Search YouTube",
			Subtext = "YouTube search",
			Icon = "multimedia-video-player",
			Actions = {
				search = "lua:Search",
			},
		},
	}
end

function Search(value, args, query)
	os.execute(
		"xdg-open 'https://www.youtube.com/results?search_query=" .. query:gsub(" ", "+"):gsub("'", "'\\''") .. "'"
	)
end
