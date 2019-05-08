" Use the silver searcher ag instead of ack
let g:ackprg = 'ag --smart-case --skip-vcs-ignores --nogroup --column --follow'

" Don't jump to the first result automatically
cnoreabbrev Ack Ack!
