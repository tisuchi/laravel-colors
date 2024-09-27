# Laravel Colors

**Laravel Colors** is a modern theme for both Vim and Neovim. This color scheme is designed to be elegant and minimalistic, providing a smooth developer experience. 
This this is highly inspired by [Ice Berg](https://github.com/cocopon/iceberg.vim/tree/master). A big clap for that 👏. 

## Features
- Works with both Vim and Neovim
- Clean and minimal colorscheme
- Designed for day-to-day coding with a focus on readability


## Preview 

|                              |                               |
| ---------------------------- | ----------------------------- |
| ![Welcome Page](docs/01.png) | ![PHP Class](docs/02.png)     |
| ![Route.php](docs/03.png)    | ![PHP Unit Test](docs/04.png) |


## Color scheme

| Blue                                                                 | Pink                                                                 | Purple                                                               | Green                                                                | Gray                                                                 | Other                                                                |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| ![0084ff](https://via.placeholder.com/15/0084ff/0084ff.png) `0084FF` | ![ff00e0](https://via.placeholder.com/15/ff00e0/ff00e0.png) `FF00E0` | ![a200ff](https://via.placeholder.com/15/a200ff/a200ff.png) `A200FF` | ![00eb00](https://via.placeholder.com/15/00eb00/00eb00.png) `00EB00` | ![2a2a2f](https://via.placeholder.com/15/2a2a2f/2a2a2f.png) `2A2A2F` | ![F2CA00](https://via.placeholder.com/15/F2CA00/F2CA00.png) `F2CA00` |
| ![005fe7](https://via.placeholder.com/15/005fe7/005fe7.png) `005FE7` | ![ff00ba](https://via.placeholder.com/15/ff00ba/ff00ba.png) `FF00BA` | ![8c00e0](https://via.placeholder.com/15/8c00e0/8c00e0.png) `8C00E0` | ![00c000](https://via.placeholder.com/15/00c000/00c000.png) `00C000` | ![333333](https://via.placeholder.com/15/333333/333333.png) `333333` | ![BE2C13](https://via.placeholder.com/15/BE2C13/BE2C13.png) `BE2C13` |
| ![003db1](https://via.placeholder.com/15/003db1/003db1.png) `003DB1` | ![c50082](https://via.placeholder.com/15/c50082/c50082.png) `C50082` | ![6c00ab](https://via.placeholder.com/15/6c00ab/6c00ab.png) `6C00AB` | ![008e00](https://via.placeholder.com/15/008e00/008e00.png) `008E00` | ![555555](https://via.placeholder.com/15/555555/555555.png) `555555` |                                                                      |
| ![00217a](https://via.placeholder.com/15/00217a/00217a.png) `00217A` | ![880051](https://via.placeholder.com/15/880051/880051.png) `880051` | ![4b0076](https://via.placeholder.com/15/4b0076/4b0076.png) `4B0076` | ![006700](https://via.placeholder.com/15/006700/006700.png) `006700` | ![888888](https://via.placeholder.com/15/888888/888888.png) `888888` |                                                                      |
| ![000f43](https://via.placeholder.com/15/000f43/000f43.png) `000F43` | ![4b0028](https://via.placeholder.com/15/4b0028/4b0028.png) `4B0028` | ![2a0041](https://via.placeholder.com/15/2a0041/2a0041.png) `2A0041` | ![003800](https://via.placeholder.com/15/003800/003800.png) `003800` | ![dddddd](https://via.placeholder.com/15/dddddd/dddddd.png) `DDDDDD` |                                                                      |
|                                                                      |                                                                      |                                                                      |                                                                      | ![eeeeee](https://via.placeholder.com/15/eeeeee/eeeeee.png) `EEEEEE` |                                                                      |
|                                                                      |                                                                      |                                                                      |                                                                      | ![ffffff](https://via.placeholder.com/15/ffffff/ffffff.png) `FFFFFF` |                                                                      |



## Installation

Add the following to your `init.lua` or `init.vim` to install with [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'tisuchi/laravel-colors'
```

or

```lua 
lvim.plugins = {
    ... 
    {"tisuchi/laravel-colors"},
    ... 
}

-- Apply the color scheme
lvim.colorscheme = "laravel-colors"
```

Restart your neovim or lunarvim. 
