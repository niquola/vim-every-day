fun! RememberSpecLine()
  let g:cspec = expand('%') . " -l ".  line('.')
  echo "Remember: ".g:cspec
endfun
command! RememberSpecLine call RememberSpecLine()

fun! SpecLine()
  let s:file = split(g:cspec, " -l")[0]
  let s:line = split(g:cspec, " -l")[1]

  exec ":e ". s:file
  exec ":". s:line
endfun

command! SpecLine call SpecLine()

fun! RunSpecLine()
  exec ":!rspec " . g:cspec
endfun
command! RunSpecLine call RunSpecLine()
