" Neo Artisan Light Theme for LunarVim
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "neo-artisan-hue-light"

" Editor colors
hi Normal guibg=#f5f5f5 guifg=#24292e
hi Cursor guifg=#24292e
hi Visual guibg=#0366d625
hi CursorLine guibg=#d7dbe041
hi Whitespace guifg=#d1d5da

" Basic syntax groups
hi Comment guifg=#6a737d
hi Constant guifg=#005cc5
hi Identifier guifg=#24292e
hi Statement guifg=#d73a49
hi PreProc guifg=#6f42c1
hi Type guifg=#005cc5
hi Special guifg=#24292e
hi Underlined guifg=#22863a
hi Todo guibg=#f5f5f5 guifg=#d73a49
hi String guifg=#032f62
hi Function guifg=#6f42c1

" Additional mappings based on tokenColors
hi Comment guifg=#6a737d
hi Constant guifg=#005cc5
hi String guifg=#032f62
hi Variable guifg=#e36209
hi Keyword guifg=#d73a49
hi Type guifg=#005cc5
hi Function guifg=#6f42c1
hi Operator guifg=#d73a49
hi Number guifg=#005cc5
hi Boolean guifg=#005cc5
hi Identifier guifg=#24292e
hi Statement guifg=#d73a49
hi PreProc guifg=#6f42c1
hi Special guifg=#24292e
hi Todo guibg=#f5f5f5 guifg=#d73a49

" UI elements
hi LineNr guifg=#d1d5da
hi CursorLineNr guibg=#d7dbe041 guifg=#24292e
hi Pmenu guibg=#f5f5f5 guifg=#24292e
hi PmenuSel guibg=#0366d625 guifg=#24292e
hi PmenuSbar guibg=#e1e4e8
hi PmenuThumb guibg=#0366d6
hi VertSplit guifg=#e1e4e8
hi StatusLine guibg=#e1e4e8 guifg=#24292e
hi StatusLineNC guibg=#d1d5da guifg=#6a737d
hi TabLine guibg=#e1e4e8 guifg=#6a737d
hi TabLineFill guibg=#f5f5f5
hi TabLineSel guibg=#0366d6 guifg=#ffffff

" Diff colors
hi DiffAdd guibg=#e6ffed guifg=#22863a
hi DiffChange guibg=#f8e1d4 guifg=#d73a49
hi DiffDelete guibg=#ffdce0 guifg=#d73a49
hi DiffText guibg=#0366d6 guifg=#ffffff

" Git signs
hi GitGutterAdd guifg=#22863a
hi GitGutterChange guifg=#d73a49
hi GitGutterDelete guifg=#d73a49

" LSP diagnostics
hi LspDiagnosticsDefaultError guifg=#d73a49
hi LspDiagnosticsDefaultWarning guifg=#d73a49
hi LspDiagnosticsDefaultInformation guifg=#24292e
hi LspDiagnosticsDefaultHint guifg=#24292e

" Treesitter syntax groups
hi TSComment guifg=#6a737d
hi TSConstant guifg=#005cc5
hi TSString guifg=#032f62
hi TSVariable guifg=#e36209
hi TSKeyword guifg=#d73a49
hi TSType guifg=#005cc5
hi TSFunction guifg=#6f42c1
hi TSOperator guifg=#d73a49
hi TSNumber guifg=#005cc5
hi TSBoolean guifg=#005cc5
hi TSIdentifier guifg=#24292e
hi TSStatement guifg=#d73a49
hi TSPreProc guifg=#6f42c1
hi TSSpecial guifg=#24292e
hi TSTodo guibg=#f5f5f5 guifg=#d73a49

