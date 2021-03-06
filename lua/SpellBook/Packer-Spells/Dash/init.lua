-- vim.g.dashboard_default_executive = 'telescope'


local headers = {{"spaceship.cat",41,50},{"mona.cat",47,70 },{"escher.cat",63,80},{"ThePersistanceOfMemorie.cat",60,80},{"coffee.cat", 42,80},{"dragon.cat",18,100},{"computer.cat",32,90},{"below.cat",13,120},{"alien.cat", 45,80},{"earth.cat",43,100},{"maxpayne.cat",50,80},{"oldtv.cat",21,80},{"saturn.cat",36,80}}
vim.g.dashboard_preview_command = 'cat'
vim.g.dashboard_preview_pipeline = 'lolcat -F 0.03 -a -s 2000 -d 7'
vim.g.dashboard_preview_file = '~/.config/nvim/lua/SpellBook/Packer-Spells/Dash/' .. headers[7][1]
vim.g.dashboard_preview_file_height = headers[7][2]
vim.g.dashboard_preview_file_width = headers[7][3]


vim.g.dashboard_custom_section = {
    a = {description = {''}, command = ''},
    b = {description = {''}, command = ''},
    c = {description = {''}, command = ''},
    d = {description = {''}, command = ''},
--    e = {description = {'  Settings           '}, command = ':e '..CONFIG_PATH..'/lv-settings.lua'}
    -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
}
--
--
vim.g.dashboard_custom_footer = {"Mostrosity :D "}

--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  -- 
--
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  --  --  -- 
--  -- 
