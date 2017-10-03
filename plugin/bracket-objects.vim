if exists("g:loaded_bracket_objects")
  finish
endif
let g:loaded_bracket_objects = 1

function! BracketObject(direction, object)
        normal! \<ESC>
        let l:cur_pos = getpos('.')
	exe "normal! v" . a:object . "\<ESC>"
        if a:direction == "["
            call setpos("'>", l:cur_pos)
        else
            call setpos("'<", l:cur_pos)
        endif
        normal gv
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
