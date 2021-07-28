<div align="center">
  
  
# Mostrosity-vim
  
  
  <img src="https://user-images.githubusercontent.com/72895337/127372993-52ac2b3a-f02b-41c2-8d07-d2f2c819af24.png" style="max-width:50%">
  
<img src="https://user-images.githubusercontent.com/72895337/127373211-04fae9ad-7ec0-43ae-94e4-050a5171adc8.png" style="max-width:50%;">  

  
</div>

# Description
This is a Config based on [Mos-Vim](https://github.com/italoaa/Mos-Vim)


# How to Use Mostrosity Vim?
1. Clone the github repo and make sure to download node,yarn,etc whatever it tells you, also you need nvim nightly. put it in ~/.config/nvim
```
$ git clone URL
```
2. Run `:PackerInstall`
3. DONE

## How it Works?
### File structure

<img src="https://user-images.githubusercontent.com/72895337/125215346-e0320d80-e280-11eb-8ea1-96febef22d63.png" height="500">

Spells are just lua requiring the modules - So the config file has spells/modules like keybindings etc.

## Contents
This config has the indispensable for a config based on productivity. All the config uses Packer to manage the plugins so they can be lazy loaded to save startup time. (haven't done this yet but can be done) Then for packer the most important plugins are TreeSitter for highlighting, Whichkey for good keybindings, telescope to fuzzy yoouuur way to find anything you want, lsp-config to make configuring lsp easier and finally Dap for debug.
