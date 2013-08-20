fun! RememberSpecLine()
  let g:cspec = expand('%') . " -l ".  line('.')
  echo "Remember: ".g:cspec
endfun
command! RememberSpecLine call RememberSpecLine()

fun! RunSpecLine()
  exec ":!rspec " . g:cspec
endfun
command! RunSpecLine call RunSpecLine()
