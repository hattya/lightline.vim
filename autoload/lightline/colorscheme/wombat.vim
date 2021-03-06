" =============================================================================
" Filename: autoload/lightline/colorscheme/wombat.vim
" Version: 0.0
" Author: itchyny
" License: MIT License
" Last Change: 2013/08/22 21:44:14.
" =============================================================================
let s:base03 = [ '#242424', 235 ]
let s:base023 = [ '#353535 ', 236 ]
let s:base02 = [ '#444444 ', 238 ]
let s:base01 = [ '#585858', 240 ]
let s:base00 = [ '#666666', 242  ]
let s:base0 = [ '#808080', 244 ]
let s:base1 = [ '#949494', 246 ]
let s:base2 = [ '#a8a8a8', 248 ]
let s:base3 = [ '#d0d0d0', 252 ]
let s:yellow = [ '#cae682', 180 ]
let s:orange = [ '#e5786d', 173 ]
let s:red = [ '#e5786d', 203 ]
let s:magenta = [ '#f2c68a', 216 ]
let s:blue = [ '#8ac6f2', 117 ]
let s:cyan = s:blue
let s:green = [ '#95e454', 119 ]
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}}
let s:p.normal.left = [ [ s:base02, s:blue ], [ s:base3, s:base01 ] ]
let s:p.normal.right = [ [ s:base02, s:base0 ], [ s:base1, s:base01 ], [ s:base0, s:base02 ] ]
let s:p.inactive.right = [ [ s:base02, s:base01 ], [ s:base0, s:base02 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base00, s:base03 ] ]
let s:p.insert.left = [ [ s:base02, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base02, s:red ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base02, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base03, s:base023 ] ]

function! s:flatten(p)
  for k in values(a:p)
    for l in values(k)
      for m in range(len(l))
        let l[m] = [l[m][0][0], l[m][1][0], l[m][0][1], l[m][1][1]]
      endfor
    endfor
  endfor
  return a:p
endfunction
let g:lightline#colorscheme#wombat#palette = s:flatten(s:p)

