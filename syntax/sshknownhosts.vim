setlocal iskeyword=@,48-57,_,192-255,#,-
syntax match sshknownhostspubkey "AAAA[0-9a-zA-Z+/]\+[=]\{0,2}" " regular expression to match pubkey
highlight def link sshknownhostspubkey Special

" Match ssh-rsa and set hi with link
syn keyword sshalg ssh-rsa
hi def link sshalg Identifier

" Match ip and set hi with link
syn match sshknownhostsip "\<\(\d\{1,3}.\)\{3}\d\{1,3}\>"
hi def link sshknownhostsip Constant
