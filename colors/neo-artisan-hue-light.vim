" Neo Artisan Light Theme for LunarVim
set background=light
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name = "neo-artisan-hue-light"


if has("gui_running") || &t_Co == 88 || &t_Co == 256
    " functions {{{
    fun <SID>grey_number(x)
        if &t_Co == 88
            if a:x < 23
                return 0
            elseif a:x < 69
                return 1
            elseif a:x < 103
                return 2
            elseif a:x < 127
                return 3
            elseif a:x < 150
                return 4
            elseif a:x < 173
                return 5
            elseif a:x < 196
                return 6
            elseif a:x < 219
                return 7
            elseif a:x < 243
                return 8
            else
                return 9
            endif
        else
            if a:x < 14
                return 0
            else
                let l:n = (a:x - 8) / 10
                let l:m = (a:x - 8) % 10
                if l:m < 5
                    return l:n
                else
                    return l:n + 1
                endif
            endif
        endif
    endfun

    fun <SID>grey_level(n)
        if &t_Co == 88
            if a:n == 0
                return 0
            elseif a:n == 1
                return 46
            elseif a:n == 2
                return 92
            elseif a:n == 3
                return 115
            elseif a:n == 4
                return 139
            elseif a:n == 5
                return 162
            elseif a:n == 6
                return 185
            elseif a:n == 7
                return 208
            elseif a:n == 8
                return 231
            else
                return 255
            endif
        else
            if a:n == 0
                return 0
            else
                return 8 + (a:n * 10)
            endif
        endif
    endfun

    fun <SID>grey_color(n)
        if &t_Co == 88
            if a:n == 0
                return 16
            elseif a:n == 9
                return 79
            else
                return 79 + a:n
            endif
        else
            if a:n == 0
                return 16
            elseif a:n == 25
                return 231
            else
                return 231 + a:n
            endif
        endif
    endfun

    fun <SID>rgb_number(x)
        if &t_Co == 88
            if a:x < 69
                return 0
            elseif a:x < 172
                return 1
            elseif a:x < 230
                return 2
            else
                return 3
            endif
        else
            if a:x < 75
                return 0
            else
                let l:n = (a:x - 55) / 40
                let l:m = (a:x - 55) % 40
                if l:m < 20
                    return l:n
                else
                    return l:n + 1
                endif
            endif
        endif
    endfun

    fun <SID>rgb_level(n)
        if &t_Co == 88
            if a:n == 0
                return 0
            elseif a:n == 1
                return 139
            elseif a:n == 2
                return 205
            else
                return 255
            endif
        else
            if a:n == 0
                return 0
            else
                return 55 + (a:n * 40)
            endif
        endif
    endfun

    fun <SID>rgb_color(x, y, z)
        if &t_Co == 88
            return 16 + (a:x * 16) + (a:y * 4) + a:z
        else
            return 16 + (a:x * 36) + (a:y * 6) + a:z
        endif
    endfun

    fun <SID>color(r, g, b)
        let l:gx = <SID>grey_number(a:r)
        let l:gy = <SID>grey_number(a:g)
        let l:gz = <SID>grey_number(a:b)

        let l:x = <SID>rgb_number(a:r)
        let l:y = <SID>rgb_number(a:g)
        let l:z = <SID>rgb_number(a:b)

        if l:gx == l:gy && l:gy == l:gz
            let l:dgr = <SID>grey_level(l:gx) - a:r
            let l:dgg = <SID>grey_level(l:gy) - a:g
            let l:dgb = <SID>grey_level(l:gz) - a:b
            let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
            let l:dr = <SID>rgb_level(l:gx) - a:r
            let l:dg = <SID>rgb_level(l:gy) - a:g
            let l:db = <SID>rgb_level(l:gz) - a:b
            let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
            if l:dgrey < l:drgb
                return <SID>grey_color(l:gx)
            else
                return <SID>rgb_color(l:x, l:y, l:z)
            endif
        else
            return <SID>rgb_color(l:x, l:y, l:z)
        endif
    endfun

    fun <SID>rgb(rgb)
        let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
        let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
        let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

        return <SID>color(l:r, l:g, l:b)
    endfun

    fun <SID>X(group, fg, bg, attr)
        if a:fg != ""
            exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
        endif
        if a:bg != ""
            exec "hi " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
        endif
        if a:attr != ""
            exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
        endif
    endfun
    " }}}

    call <SID>X("Normal", "24292e", "f5f5f5", "")
    call <SID>X("Cursor", "f5f5f5", "3e3690", "")
    call <SID>X("Visual", "24292e", "0366d625", "")
    call <SID>X("CursorLine", "", "d7dbe041", "")
    call <SID>X("CursorColumn", "", "d7dbe041", "")
    call <SID>X("LineNr", "d1d5da", "", "")
    call <SID>X("CursorLineNr", "24292e", "d7dbe041", "")
    call <SID>X("Pmenu", "24292e", "f5f5f5", "")
    call <SID>X("PmenuSel", "24292e", "0366d625", "")
    call <SID>X("PmenuSbar", "", "e1e4e8", "")
    call <SID>X("PmenuThumb", "", "0366d6", "")
    call <SID>X("VertSplit", "e1e4e8", "", "")
    call <SID>X("StatusLine", "24292e", "e1e4e8", "")
    call <SID>X("StatusLineNC", "6a737d", "d1d5da", "")
    call <SID>X("TabLine", "6a737d", "e1e4e8", "")
    call <SID>X("TabLineFill", "", "f5f5f5", "")
    call <SID>X("TabLineSel", "ffffff", "0366d6", "")
    call <SID>X("Whitespace", "d1d5da", "", "")
    call <SID>X("Comment", "6a737d", "", "")
    call <SID>X("Constant", "005cc5", "", "")
    call <SID>X("String", "032f62", "", "")
    call <SID>X("Character", "005cc5", "", "")
    call <SID>X("Number", "005cc5", "", "")
    call <SID>X("Boolean", "005cc5", "", "")
    call <SID>X("Float", "005cc5", "", "")
    call <SID>X("Identifier", "24292e", "", "")
    call <SID>X("Function", "6f42c1", "", "")
    call <SID>X("Statement", "d73a49", "", "")
    call <SID>X("Conditional", "d73a49", "", "")
    call <SID>X("Repeat", "d73a49", "", "")
    call <SID>X("Label", "d73a49", "", "")
    call <SID>X("Operator", "d73a49", "", "")
    call <SID>X("Keyword", "d73a49", "", "")
    call <SID>X("Exception", "d73a49", "", "")
    call <SID>X("PreProc", "6f42c1", "", "")
    call <SID>X("Include", "6f42c1", "", "")
    call <SID>X("Define", "6f42c1", "", "")
    call <SID>X("Macro", "6f42c1", "", "")
    call <SID>X("PreCondit", "6f42c1", "", "")
    call <SID>X("Type", "005cc5", "", "")
    call <SID>X("StorageClass", "005cc5", "", "")
    call <SID>X("Structure", "005cc5", "", "")
    call <SID>X("Typedef", "005cc5", "", "")
    call <SID>X("Special", "24292e", "", "")
    call <SID>X("SpecialChar", "24292e", "", "")
    call <SID>X("Tag", "24292e", "", "")
    call <SID>X("Delimiter", "24292e", "", "")
    call <SID>X("SpecialComment", "24292e", "", "")
    call <SID>X("Debug", "24292e", "", "")
    call <SID>X("Underlined", "22863a", "", "")
    call <SID>X("Ignore", "d1d5da", "", "")
    call <SID>X("Error", "d73a49", "ffdce0", "")
    call <SID>X("Todo", "d73a49", "f5f5f5", "")

    call <SID>X("DiffAdd", "22863a", "e6ffed", "")
    call <SID>X("DiffChange", "d73a49", "f8e1d4", "")
    call <SID>X("DiffDelete", "d73a49", "ffdce0", "")
    call <SID>X("DiffText", "ffffff", "0366d6", "")

    call <SID>X("GitGutterAdd", "22863a", "", "")
    call <SID>X("GitGutterChange", "d73a49", "", "")
    call <SID>X("GitGutterDelete", "d73a49", "", "")

    call <SID>X("LspDiagnosticsDefaultError", "d73a49", "", "")
    call <SID>X("LspDiagnosticsDefaultWarning", "d73a49", "", "")
    call <SID>X("LspDiagnosticsDefaultInformation", "24292e", "", "")
    call <SID>X("LspDiagnosticsDefaultHint", "24292e", "", "")

    call <SID>X("TSComment", "6a737d", "", "")
    call <SID>X("TSConstant", "005cc5", "", "")
    call <SID>X("TSString", "032f62", "", "")
    call <SID>X("TSCharacter", "005cc5", "", "")
    call <SID>X("TSNumber", "005cc5", "", "")
    call <SID>X("TSBoolean", "005cc5", "", "")
    call <SID>X("TSFloat", "005cc5", "", "")
    call <SID>X("TSIdentifier", "24292e", "", "")
    call <SID>X("TSFunction", "6f42c1", "", "")
    call <SID>X("TSStatement", "d73a49", "", "")
    call <SID>X("TSConditional", "d73a49", "", "")
    call <SID>X("TSRepeat", "d73a49", "", "")
    call <SID>X("TSLabel", "d73a49", "", "")
    call <SID>X("TSOperator", "d73a49", "", "")
    call <SID>X("TSKeyword", "d73a49", "", "")
    call <SID>X("TSException", "d73a49", "", "")
    call <SID>X("TSPreProc", "6f42c1", "", "")
    call <SID>X("TSInclude", "6f42c1", "", "")
    call <SID>X("TSDefine", "6f42c1", "", "")
    call <SID>X("TSMacro", "6f42c1", "", "")
    call <SID>X("TSPreCondit", "6f42c1", "", "")
    call <SID>X("TSType", "005cc5", "", "")
    call <SID>X("TSStorageClass", "005cc5", "", "")
    call <SID>X("TSStructure", "005cc5", "", "")
    call <SID>X("TSTypedef", "005cc5", "", "")
    call <SID>X("TSSpecial", "24292e", "", "")
    call <SID>X("TSSpecialChar", "24292e", "", "")
    call <SID>X("TSTag", "24292e", "", "")
    call <SID>X("TSDelimiter", "24292e", "", "")
    call <SID>X("TSSpecialComment", "24292e", "", "")
    call <SID>X("TSDebug", "24292e", "", "")
    call <SID>X("TSUnderlined", "22863a", "", "")
    call <SID>X("TSIgnore", "d1d5da", "", "")
    call <SID>X("TSError", "d73a49", "ffdce0", "")
    call <SID>X("TSTodo", "d73a49", "f5f5f5", "")

    " delete functions {{{
    delf <SID>X
    delf <SID>rgb
    delf <SID>color
    delf <SID>rgb_color
    delf <SID>rgb_level
    delf <SID>rgb_number
    delf <SID>grey_color
    delf <SID>grey_level
    delf <SID>grey_number
    " }}}
endif

" vim: set fdl=0 fdm=marker:

