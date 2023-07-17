Dont forget set 
`pip install pynvim`

First of all 'install' choco from sitek

Use the script below, determine where you might want Chocolatey installed if it is not to C:\ProgramData\chocoportable.
Open PowerShell.exe.
Run the following `Set-ExecutionPolicy Bypass -Scope Process -Force;Run .\ChocolateyInstallNonAdmin.ps1.`

`choco install ripgrep`
`choco install fd`
`choco install universal-ctags`

# hfcc
Почему то дефолтные настройки на винде не хотят работать.
По сути это обычный запрос по [[API]] поэтому просто делам обход ssl и даем ссылку на json файл, где хранится запрос.

```lua
  local f = assert(io.open("C:/Users/reg16/inputs.json", "w"))
  f:write(json.encode(request_body))
  f:close()
end

M.fetch_suggestion = function(request, callback)
  local api_token = config.get().api_token
  if api_token == "" then
    vim.notify("[HFcc] api token is empty, suggestion might not work", vim.log.levels.WARN)
  end
  local query =
      'curl "' .. get_url() .. '" \z
      --ssl-no-revoke \z
      -H "Content-type: application/json" \z
      -H "Authorization: Bearer ' .. api_token .. '" \z
      -d@C:/Users/reg16/inputs.json'
 
``` 
