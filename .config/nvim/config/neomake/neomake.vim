" Configuration for neomake

let g:neomake_python_enabled_makers = ['pylint']
" enable automatic code check
call neomake#configure#automake('nrwi', 500)
