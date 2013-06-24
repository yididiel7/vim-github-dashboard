if !has('ruby')
  finish
endif

if exists("g:loaded_github_dashboard_plugin")
  finish
endif
let g:loaded_github_dashboard_plugin = 1

command! -nargs=? -bang GHDashboard call github_dashboard#open('!' == '<bang>', 'received_events', <f-args>)
command! -nargs=? -bang GHActivity  call github_dashboard#open('!' == '<bang>', 'events', <f-args>)
