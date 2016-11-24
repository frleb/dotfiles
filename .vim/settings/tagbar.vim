if neobundle#tap('Tagbar')

  autocmd VimEnter * nested :call tagbar#autoopen(1)

  call neobundle#untap()
endif
