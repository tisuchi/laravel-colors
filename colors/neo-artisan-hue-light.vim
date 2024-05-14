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
hi CursorColumn guibg=#d7dbe041
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
hi Whitespace guifg=#d1d5da

" Syntax highlighting
hi Comment guifg=#6a737d
hi Constant guifg=#005cc5
hi String guifg=#032f62
hi Character guifg=#005cc5
hi Number guifg=#005cc5
hi Boolean guifg=#005cc5
hi Float guifg=#005cc5
hi Identifier guifg=#24292e
hi Function guifg=#6f42c1
hi Statement guifg=#d73a49
hi Conditional guifg=#d73a49
hi Repeat guifg=#d73a49
hi Label guifg=#d73a49
hi Operator guifg=#d73a49
hi Keyword guifg=#d73a49
hi Exception guifg=#d73a49
hi PreProc guifg=#6f42c1
hi Include guifg=#6f42c1
hi Define guifg=#6f42c1
hi Macro guifg=#6f42c1
hi PreCondit guifg=#6f42c1
hi Type guifg=#005cc5
hi StorageClass guifg=#005cc5
hi Structure guifg=#005cc5
hi Typedef guifg=#005cc5
hi Special guifg=#24292e
hi SpecialChar guifg=#24292e
hi Tag guifg=#24292e
hi Delimiter guifg=#24292e
hi SpecialComment guifg=#24292e
hi Debug guifg=#24292e
hi Underlined guifg=#22863a
hi Ignore guifg=#d1d5da
hi Error guifg=#d73a49 guibg=#ffdce0
hi Todo guibg=#f5f5f5 guifg=#d73a49

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
hi TSCharacter guifg=#005cc5
hi TSNumber guifg=#005cc5
hi TSBoolean guifg=#005cc5
hi TSFloat guifg=#005cc5
hi TSIdentifier guifg=#24292e
hi TSFunction guifg=#6f42c1
hi TSStatement guifg=#d73a49
hi TSConditional guifg=#d73a49
hi TSRepeat guifg=#d73a49
hi TSLabel guifg=#d73a49
hi TSOperator guifg=#d73a49
hi TSKeyword guifg=#d73a49
hi TSException guifg=#d73a49
hi TSPreProc guifg=#6f42c1
hi TSInclude guifg=#6f42c1
hi TSDefine guifg=#6f42c1
hi TSMacro guifg=#6f42c1
hi TSPreCondit guifg=#6f42c1
hi TSType guifg=#005cc5
hi TSStorageClass guifg=#005cc5
hi TSStructure guifg=#005cc5
hi TSTypedef guifg=#005cc5
hi TSSpecial guifg=#24292e
hi TSSpecialChar guifg=#24292e
hi TSTag guifg=#24292e
hi TSDelimiter guifg=#24292e
hi TSSpecialComment guifg=#24292e
hi TSDebug guifg=#24292e
hi TSUnderlined guifg=#22863a
hi TSIgnore guifg=#d1d5da
hi TSError guifg=#d73a49 guibg=#ffdce0
hi TSTodo guibg=#f5f5f5 guifg=#d73a49

