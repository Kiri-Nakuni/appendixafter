-- Identify the bundle and module
bundle = ""
module = "AppendixAfter"
-- Release a TDS-style zip
packtdszip = true
typesetexe = "lualatex"
typesetfiles = {"*.dtx"}
unpackfiles = {"*.dtx"}
checkengines = {"pdftex", "luatex", "xetex", "uptex"}
maindir = "."
testsuppdir = "./testfiles/support"
installfiles = {"*.sty"}