if exists("g:loaded_bracket_objects")
  finish
endif
let g:loaded_bracket_objects = 1

function! BracketObject(direction, object) abort
    normal! \<ESC>
    let l:cur_pos = getpos('.')
    exe "normal! v" . a:object . "\<ESC>"
    if a:direction == "["
        call setpos("'>", l:cur_pos)
    else
        call setpos("'<", l:cur_pos)
    endif
    normal! gv
endfunction

function! SelectBuffer() abort
    normal! \<ESC>
    call setpos("'<", [0, 1, 1, 0])
    call setpos("'>", getpos('$'))
    normal! gv$
endfunction

function! SelectInsideLine() abort
    normal! \<ESC>
    normal! ^vg_
endfunction

function! SelectAroundLine() abort
    normal! \<ESC>
    normal! 0v$
endfunction

" VIM built-in mappings
onoremap <silent> [iw :call BracketObject("[", "iw")<CR>
vnoremap <silent> [iw :<C-u>call BracketObject("[", "iw")<CR>
onoremap <silent> ]iw :call BracketObject("]", "iw")<CR>
vnoremap <silent> ]iw :<C-u>call BracketObject("]", "iw")<CR>
onoremap <silent> [aw :call BracketObject("[", "aw")<CR>
vnoremap <silent> [aw :<C-u>call BracketObject("[", "aw")<CR>
onoremap <silent> ]aw :call BracketObject("]", "aw")<CR>
vnoremap <silent> ]aw :<C-u>call BracketObject("]", "aw")<CR>


onoremap <silent> [iW :call BracketObject("[", "iW")<CR>
vnoremap <silent> [iW :<C-u>call BracketObject("[", "iW")<CR>
onoremap <silent> ]iW :call BracketObject("]", "iW")<CR>
vnoremap <silent> ]iW :<C-u>call BracketObject("]", "iW")<CR>
onoremap <silent> [aW :call BracketObject("[", "aW")<CR>
vnoremap <silent> [aW :<C-u>call BracketObject("[", "aW")<CR>
onoremap <silent> ]aW :call BracketObject("]", "aW")<CR>
vnoremap <silent> ]aW :<C-u>call BracketObject("]", "aW")<CR>


onoremap <silent> [is :call BracketObject("[", "is")<CR>
vnoremap <silent> [is :<C-u>call BracketObject("[", "is")<CR>
onoremap <silent> ]is :call BracketObject("]", "is")<CR>
vnoremap <silent> ]is :<C-u>call BracketObject("]", "is")<CR>
onoremap <silent> [as :call BracketObject("[", "as")<CR>
vnoremap <silent> [as :<C-u>call BracketObject("[", "as")<CR>
onoremap <silent> ]as :call BracketObject("]", "as")<CR>
vnoremap <silent> ]as :<C-u>call BracketObject("]", "as")<CR>


onoremap <silent> [ip :call BracketObject("[", "ip")<CR>
vnoremap <silent> [ip :<C-u>call BracketObject("[", "ip")<CR>
onoremap <silent> ]ip :call BracketObject("]", "ip")<CR>
vnoremap <silent> ]ip :<C-u>call BracketObject("]", "ip")<CR>
onoremap <silent> [ap :call BracketObject("[", "ap")<CR>
vnoremap <silent> [ap :<C-u>call BracketObject("[", "ap")<CR>
onoremap <silent> ]ap :call BracketObject("]", "ap")<CR>
vnoremap <silent> ]ap :<C-u>call BracketObject("]", "ap")<CR>


onoremap <silent> [i[ :call BracketObject("[", "i[")<CR>
vnoremap <silent> [i[ :<C-u>call BracketObject("[", "i[")<CR>
onoremap <silent> ]i[ :call BracketObject("]", "i[")<CR>
vnoremap <silent> ]i[ :<C-u>call BracketObject("]", "i[")<CR>
onoremap <silent> [a[ :call BracketObject("[", "a[")<CR>
vnoremap <silent> [a[ :<C-u>call BracketObject("[", "a[")<CR>
onoremap <silent> ]a[ :call BracketObject("]", "a[")<CR>
vnoremap <silent> ]a[ :<C-u>call BracketObject("]", "a[")<CR>
onoremap <silent> [i] :call BracketObject("[", "i]")<CR>
vnoremap <silent> [i] :<C-u>call BracketObject("[", "i]")<CR>
onoremap <silent> ]i] :call BracketObject("]", "i]")<CR>
vnoremap <silent> ]i] :<C-u>call BracketObject("]", "i]")<CR>
onoremap <silent> [a] :call BracketObject("[", "a]")<CR>
vnoremap <silent> [a] :<C-u>call BracketObject("[", "a]")<CR>
onoremap <silent> ]a] :call BracketObject("]", "a]")<CR>
vnoremap <silent> ]a] :<C-u>call BracketObject("]", "a]")<CR>


onoremap <silent> [i( :call BracketObject("[", "i(")<CR>
vnoremap <silent> [i( :<C-u>call BracketObject("[", "i(")<CR>
onoremap <silent> ]i( :call BracketObject("]", "i(")<CR>
vnoremap <silent> ]i( :<C-u>call BracketObject("]", "i(")<CR>
onoremap <silent> [a( :call BracketObject("[", "a(")<CR>
vnoremap <silent> [a( :<C-u>call BracketObject("[", "a(")<CR>
onoremap <silent> ]a( :call BracketObject("]", "a(")<CR>
vnoremap <silent> ]a( :<C-u>call BracketObject("]", "a(")<CR>
onoremap <silent> [i) :call BracketObject("[", "i)")<CR>
vnoremap <silent> [i) :<C-u>call BracketObject("[", "i)")<CR>
onoremap <silent> ]i) :call BracketObject("]", "i)")<CR>
vnoremap <silent> ]i) :<C-u>call BracketObject("]", "i)")<CR>
onoremap <silent> [a) :call BracketObject("[", "a)")<CR>
vnoremap <silent> [a) :<C-u>call BracketObject("[", "a)")<CR>
onoremap <silent> ]a) :call BracketObject("]", "a)")<CR>
vnoremap <silent> ]a) :<C-u>call BracketObject("]", "a)")<CR>

onoremap <silent> [ib :call BracketObject("[", "ib")<CR>
vnoremap <silent> [ib :<C-u>call BracketObject("[", "ib")<CR>
onoremap <silent> ]ib :call BracketObject("]", "ib")<CR>
vnoremap <silent> ]ib :<C-u>call BracketObject("]", "ib")<CR>
onoremap <silent> [ab :call BracketObject("[", "ab")<CR>
vnoremap <silent> [ab :<C-u>call BracketObject("[", "ab")<CR>
onoremap <silent> ]ab :call BracketObject("]", "ab")<CR>
vnoremap <silent> ]ab :<C-u>call BracketObject("]", "ab")<CR>


onoremap <silent> [i< :call BracketObject("[", "i<")<CR>
vnoremap <silent> [i< :<C-u>call BracketObject("[", "i<")<CR>
onoremap <silent> ]i< :call BracketObject("]", "i<")<CR>
vnoremap <silent> ]i< :<C-u>call BracketObject("]", "i<")<CR>
onoremap <silent> [a< :call BracketObject("[", "a<")<CR>
vnoremap <silent> [a< :<C-u>call BracketObject("[", "a<")<CR>
onoremap <silent> ]a< :call BracketObject("]", "a<")<CR>
vnoremap <silent> ]a< :<C-u>call BracketObject("]", "a<")<CR>
onoremap <silent> [i> :call BracketObject("[", "i>")<CR>
vnoremap <silent> [i> :<C-u>call BracketObject("[", "i>")<CR>
onoremap <silent> ]i> :call BracketObject("]", "i>")<CR>
vnoremap <silent> ]i> :<C-u>call BracketObject("]", "i>")<CR>
onoremap <silent> [a> :call BracketObject("[", "a>")<CR>
vnoremap <silent> [a> :<C-u>call BracketObject("[", "a>")<CR>
onoremap <silent> ]a> :call BracketObject("]", "a>")<CR>
vnoremap <silent> ]a> :<C-u>call BracketObject("]", "a>")<CR>

onoremap <silent> [it :call BracketObject("[", "it")<CR>
vnoremap <silent> [it :<C-u>call BracketObject("[", "it")<CR>
onoremap <silent> ]it :call BracketObject("]", "it")<CR>
vnoremap <silent> ]it :<C-u>call BracketObject("]", "it")<CR>
onoremap <silent> [at :call BracketObject("[", "at")<CR>
vnoremap <silent> [at :<C-u>call BracketObject("[", "at")<CR>
onoremap <silent> ]at :call BracketObject("]", "at")<CR>
vnoremap <silent> ]at :<C-u>call BracketObject("]", "at")<CR>


onoremap <silent> [i{ :call BracketObject("[", "i{")<CR>
vnoremap <silent> [i{ :<C-u>call BracketObject("[", "i{")<CR>
onoremap <silent> ]i{ :call BracketObject("]", "i{")<CR>
vnoremap <silent> ]i{ :<C-u>call BracketObject("]", "i{")<CR>
onoremap <silent> [a{ :call BracketObject("[", "a{")<CR>
vnoremap <silent> [a{ :<C-u>call BracketObject("[", "a{")<CR>
onoremap <silent> ]a{ :call BracketObject("]", "a{")<CR>
vnoremap <silent> ]a{ :<C-u>call BracketObject("]", "a{")<CR>
onoremap <silent> [i} :call BracketObject("[", "i}")<CR>
vnoremap <silent> [i} :<C-u>call BracketObject("[", "i}")<CR>
onoremap <silent> ]i} :call BracketObject("]", "i}")<CR>
vnoremap <silent> ]i} :<C-u>call BracketObject("]", "i}")<CR>
onoremap <silent> [a} :call BracketObject("[", "a}")<CR>
vnoremap <silent> [a} :<C-u>call BracketObject("[", "a}")<CR>
onoremap <silent> ]a} :call BracketObject("]", "a}")<CR>
vnoremap <silent> ]a} :<C-u>call BracketObject("]", "a}")<CR>

onoremap <silent> [iB :call BracketObject("[", "iB")<CR>
vnoremap <silent> [iB :<C-u>call BracketObject("[", "iB")<CR>
onoremap <silent> ]iB :call BracketObject("]", "iB")<CR>
vnoremap <silent> ]iB :<C-u>call BracketObject("]", "iB")<CR>
onoremap <silent> [aB :call BracketObject("[", "aB")<CR>
vnoremap <silent> [aB :<C-u>call BracketObject("[", "aB")<CR>
onoremap <silent> ]aB :call BracketObject("]", "aB")<CR>
vnoremap <silent> ]aB :<C-u>call BracketObject("]", "aB")<CR>


onoremap <silent> [i" :call BracketObject("[", "i\"")<CR>
vnoremap <silent> [i" :<C-u>call BracketObject("[", "i\"")<CR>
onoremap <silent> ]i" :call BracketObject("]", "i\"")<CR>
vnoremap <silent> ]i" :<C-u>call BracketObject("]", "i\"")<CR>
onoremap <silent> [a" :call BracketObject("[", "a\"")<CR>
vnoremap <silent> [a" :<C-u>call BracketObject("[", "a\"")<CR>
onoremap <silent> ]a" :call BracketObject("]", "a\"")<CR>
vnoremap <silent> ]a" :<C-u>call BracketObject("]", "a\"")<CR>

onoremap <silent> [i' :call BracketObject("[", "i'")<CR>
vnoremap <silent> [i' :<C-u>call BracketObject("[", "i'")<CR>
onoremap <silent> ]i' :call BracketObject("]", "i'")<CR>
vnoremap <silent> ]i' :<C-u>call BracketObject("]", "i'")<CR>
onoremap <silent> [a' :call BracketObject("[", "a'")<CR>
vnoremap <silent> [a' :<C-u>call BracketObject("[", "a'")<CR>
onoremap <silent> ]a' :call BracketObject("]", "a'")<CR>
vnoremap <silent> ]a' :<C-u>call BracketObject("]", "a'")<CR>

onoremap <silent> [i` :call BracketObject("[", "i`")<CR>
vnoremap <silent> [i` :<C-u>call BracketObject("[", "i`")<CR>
onoremap <silent> ]i` :call BracketObject("]", "i`")<CR>
vnoremap <silent> ]i` :<C-u>call BracketObject("]", "i`")<CR>
onoremap <silent> [a` :call BracketObject("[", "a`")<CR>
vnoremap <silent> [a` :<C-u>call BracketObject("[", "a`")<CR>
onoremap <silent> ]a` :call BracketObject("]", "a`")<CR>
vnoremap <silent> ]a` :<C-u>call BracketObject("]", "a`")<CR>

" TODO: add custom popular text-objects
" https://github.com/wellle/targets.vim mappings
if exists("g:loaded_targets")
    onoremap <silent> [( :call BracketObject("[", "(")<CR>
    vnoremap <silent> [( :<C-u>call BracketObject("[", "(")<CR>
    onoremap <silent> ]( :call BracketObject("]", "(")<CR>
    vnoremap <silent> ]( :<C-u>call BracketObject("]", "(")<CR>
    onoremap <silent> [) :call BracketObject("[", ")")<CR>
    vnoremap <silent> [) :<C-u>call BracketObject("[", ")")<CR>
    onoremap <silent> ]) :call BracketObject("]", ")")<CR>
    vnoremap <silent> ]) :<C-u>call BracketObject("]", ")")<CR>

    onoremap <silent> [b :call BracketObject("[", "b")<CR>
    vnoremap <silent> [b :<C-u>call BracketObject("[", "b")<CR>
    onoremap <silent> ]b :call BracketObject("]", "b")<CR>
    vnoremap <silent> ]b :<C-u>call BracketObject("]", "b")<CR>


    onoremap <silent> [{ :call BracketObject("[", "{")<CR>
    vnoremap <silent> [{ :<C-u>call BracketObject("[", "{")<CR>
    onoremap <silent> ]{ :call BracketObject("]", "{")<CR>
    vnoremap <silent> ]{ :<C-u>call BracketObject("]", "{")<CR>
    onoremap <silent> [} :call BracketObject("[", "}")<CR>
    vnoremap <silent> [} :<C-u>call BracketObject("[", "}")<CR>
    onoremap <silent> ]} :call BracketObject("]", "}")<CR>
    vnoremap <silent> ]} :<C-u>call BracketObject("]", "}")<CR>

    onoremap <silent> [B :call BracketObject("[", "B")<CR>
    vnoremap <silent> [B :<C-u>call BracketObject("[", "B")<CR>
    onoremap <silent> ]B :call BracketObject("]", "B")<CR>
    vnoremap <silent> ]B :<C-u>call BracketObject("]", "B")<CR>

    onoremap <silent> [[ :call BracketObject("[", "[")<CR>
    vnoremap <silent> [[ :<C-u>call BracketObject("[", "[")<CR>
    onoremap <silent> ][ :call BracketObject("]", "[")<CR>
    vnoremap <silent> ][ :<C-u>call BracketObject("]", "[")<CR>
    onoremap <silent> [] :call BracketObject("[", "]")<CR>
    vnoremap <silent> [] :<C-u>call BracketObject("[", "]")<CR>
    onoremap <silent> ]] :call BracketObject("]", "]")<CR>
    vnoremap <silent> ]] :<C-u>call BracketObject("]", "]")<CR>


    onoremap <silent> [< :call BracketObject("[", "<")<CR>
    vnoremap <silent> [< :<C-u>call BracketObject("[", "<")<CR>
    onoremap <silent> ]< :call BracketObject("]", "<")<CR>
    vnoremap <silent> ]< :<C-u>call BracketObject("]", "<")<CR>
    onoremap <silent> [> :call BracketObject("[", ">")<CR>
    vnoremap <silent> [> :<C-u>call BracketObject("[", ">")<CR>
    onoremap <silent> ]> :call BracketObject("]", ">")<CR>
    vnoremap <silent> ]> :<C-u>call BracketObject("]", ">")<CR>

    onoremap <silent> [t :call BracketObject("[", "t")<CR>
    vnoremap <silent> [t :<C-u>call BracketObject("[", "t")<CR>
    onoremap <silent> ]t :call BracketObject("]", "t")<CR>
    vnoremap <silent> ]t :<C-u>call BracketObject("]", "t")<CR>
    " TODO, unfinished
endif

if exists("g:loaded_argumentative")
    onoremap <silent> [i, :call BracketObject("[", "i,")<CR>
    vnoremap <silent> [i, :<C-u>call BracketObject("[", "i,")<CR>
    onoremap <silent> ]i, :call BracketObject("]", "i,")<CR>
    vnoremap <silent> ]i, :<C-u>call BracketObject("]", "i,")<CR>
    onoremap <silent> [a, :call BracketObject("[", "a,")<CR>
    vnoremap <silent> [a, :<C-u>call BracketObject("[", "a,")<CR>
    onoremap <silent> ]a, :call BracketObject("]", "a,")<CR>
    vnoremap <silent> ]a, :<C-u>call BracketObject("]", "a,")<CR>
endif

if exists("g:indent_object_except_first_level")
    onoremap <silent> [ii :call BracketObject("[", "ii")<CR>
    vnoremap <silent> [ii :<C-u>call BracketObject("[", "ii")<CR>
    onoremap <silent> ]ii :call BracketObject("]", "ii")<CR>
    vnoremap <silent> ]ii :<C-u>call BracketObject("]", "ii")<CR>
    onoremap <silent> [ai :call BracketObject("[", "ai")<CR>
    vnoremap <silent> [ai :<C-u>call BracketObject("[", "ai")<CR>
    onoremap <silent> ]ai :call BracketObject("]", "ai")<CR>
    vnoremap <silent> ]ai :<C-u>call BracketObject("]", "ai")<CR>

    onoremap <silent> [iI :call BracketObject("[", "iI")<CR>
    vnoremap <silent> [iI :<C-u>call BracketObject("[", "iI")<CR>
    onoremap <silent> ]iI :call BracketObject("]", "iI")<CR>
    vnoremap <silent> ]iI :<C-u>call BracketObject("]", "iI")<CR>
    onoremap <silent> [aI :call BracketObject("[", "aI")<CR>
    vnoremap <silent> [aI :<C-u>call BracketObject("[", "aI")<CR>
    onoremap <silent> ]aI :call BracketObject("]", "aI")<CR>
    vnoremap <silent> ]aI :<C-u>call BracketObject("]", "aI")<CR>
endif

" whole buffer objects
onoremap <silent> ie :call SelectBuffer()<CR>
vnoremap <silent> ie :<C-u>call SelectBuffer()<CR>
onoremap <silent> ae :call SelectBuffer()<CR>
vnoremap <silent> ae :<C-u>call SelectBuffer()<CR>
onoremap <silent> il :call SelectInsideLine()<CR>
vnoremap <silent> il :<C-u>call SelectInsideLine()<CR>
onoremap <silent> al :<C-u>call SelectAroundLine()<CR>
vnoremap <silent> al :<C-u>call SelectAroundLine()<CR>
