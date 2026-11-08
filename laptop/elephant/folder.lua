Name = "folder"
NamePretty = "Open Folder"
Icon = "folder"
Description = "Search folders in Documents and Downloads"
SearchName = true
Cache = false

local home = os.getenv("HOME")

local folders = {
	home .. "/HF",
}

local function shell_quote(str)
	return "'" .. str:gsub("'", "'\\''") .. "'"
end

function GetEntries()
	local entries = {}

	for _, folder in ipairs(folders) do
		local cmd = "fd --type d --color never . " .. shell_quote(folder) .. " 2>/dev/null"

		local handle = io.popen(cmd)

		if handle then
			for path in handle:lines() do
				local dirname = path:match("([^/]+)$")

				table.insert(entries, {
					Text = dirname or path,
					Subtext = path,
					Value = path,
					Icon = "folder",
					Actions = {
						open = "lua:Open",
					},
				})
			end

			handle:close()
		end
	end

	return entries
end

function Open(value, args, query)
	os.execute("xdg-open " .. shell_quote(value) .. " >/dev/null 2>&1 &")
end
