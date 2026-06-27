local module_files = {
    "45DegreeWallkicks",
    "actions",
    "exclamation-box",
    "hardcoded",
    "tweaks",
}

for _, file in ipairs(module_files) do
    require(file)
end