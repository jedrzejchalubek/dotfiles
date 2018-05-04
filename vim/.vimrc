let configs = [
\  "general",
\  "visual",
\  "mappings",
\  "commands",
\  "plugins",
\  "plugins-settings"
\]
for file in configs
  let x = expand("~/.vim/".file.".vim")
  if filereadable(x)
    execute 'source' x
  endif
endfor
