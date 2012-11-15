call Pl#Hi#Allocate({
	\ 'black'          : 16,
	\ 'white'          : 231,
	\
	\ 'darkestgreen'   : 22,
	\ 'darkgreen'      : 28,
	\ 'mediumgreen'    : 70,
	\ 'brightgreen'    : 148,
	\
	\ 'darkestcyan'    : 23,
	\ 'mediumcyan'     : 117,
	\
	\ 'darkestblue'    : 17,
	\ 'darkblue'       : 24,
	\ 'mediumblue'     : 31,
	\
	\ 'darkestred'     : 52,
	\ 'darkred'        : 88,
	\ 'mediumred'      : 124,
	\ 'brightred'      : 160,
	\ 'brightestred'   : 196,
	\
	\ 'darkestpurple'  : 55,
	\ 'mediumpurple'   : 98,
	\ 'brightpurple'   : 189,
	\
	\ 'purple3'         : 130,
	\ 'purple2'         : 208,
	\ 'brightestorange': 214,
	\
	\ 'gray0'          : 233,
	\ 'gray1'          : 235,
	\ 'gray2'          : 236,
	\ 'gray3'          : 239,
	\ 'gray4'          : 240,
	\ 'gray5'          : 241,
	\ 'gray6'          : 244,
	\ 'gray7'          : 245,
	\ 'gray8'          : 247,
	\ 'gray9'          : 250,
	\ 'gray10'         : 252,
	\ })

let g:Powerline#Colorschemes#darkblood#colorscheme = Pl#Colorscheme#Init([
	\ Pl#Hi#Segments(['SPLIT'], {
		\ 'n': ['white', 'gray2'],
		\ 'N': ['white', 'gray0'],
		\ 'i': ['white', 'darkestblue'],
		\ 'r': ['white', 'darkestblue'],
		\ }),
	\
	\ Pl#Hi#Segments(['mode_indicator'], {
		\ 'n': ['black', 'white', ['bold']],
		\ 'i': ['black', 'mediumgreen', ['bold']],
		\ 'v': ['black', 'purple2', ['bold']],
		\ 'r': ['white', 'brightred', ['bold']],
		\ 's': ['white', 'gray5', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['branch', 'scrollpercent', 'raw', 'filesize'], {
		\ 'n': ['white', 'darkblue'],
		\ 'N': ['gray4', 'gray1'],
		\ 'i': ['white', 'darkblue'],
		\ 'r': ['white', 'white'],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo', 'filename'], {
		\ 'n': ['white', 'darkblue', ['bold']],
		\ 'N': ['gray7', 'gray0', ['bold']],
		\ 'i': ['white', 'darkblue', ['bold']],
		\ 'r': ['white', 'darkblue', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo.filepath', 'status'], {
		\ 'n': ['gray10'],
		\ 'N': ['gray5'],
		\ 'i': ['white'],
		\ 'r': ['white'],
		\ }),
	\
	\ Pl#Hi#Segments(['static_str'], {
		\ 'n': ['white', 'gray4'],
		\ 'N': ['gray7', 'gray1'],
		\ 'i': ['white', 'darkblue'],
		\ 'r': ['white', 'darkblue'],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo.flags'], {
		\ 'n': ['white', ['bold']],
		\ 'N': ['white'],
		\ 'i': ['white', ['bold']],
		\ 'r': ['white', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['currenttag', 'fileformat', 'fileencoding', 'pwd', 'filetype', 'rvm:string', 'rvm:statusline', 'virtualenv:statusline', 'charcode', 'currhigroup'], {
		\ 'n': ['white', 'darkblue'],
		\ 'i': ['white', 'darkblue'],
		\ 'r': ['white', 'darkblue'],
		\ }),
	\
	\ Pl#Hi#Segments(['currenttag'], {
		\ 'n': ['gray8', 'gray2'],
		\ 'i': ['white', 'darkestblue'],
		\ 'r': ['white', 'darkestblue'],
		\ }),
	\
	\ Pl#Hi#Segments(['lineinfo'], {
		\ 'n': ['black', 'white', ['bold']],
		\ 'N': ['gray7', 'gray1', ['bold']],
		\ 'i': ['black', 'white', ['bold']],
		\ 'r': ['white', 'mediumgreen', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['lineinfo.line.tot'], {
		\ 'n': ['black'],
		\ 'N': ['gray5'],
		\ 'i': ['black'],
		\ 'r': ['white'],
		\ }),
	\
	\ Pl#Hi#Segments(['errors'], {
		\ 'n': ['brightestred', 'gray2', ['bold']],
		\ 'i': ['white', 'darkestblue', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['paste_indicator', 'ws_marker'], {
		\ 'n': ['white', 'gray0', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['gundo:static_str.name', 'command_t:static_str.name'], {
		\ 'n': ['white', 'mediumblue', ['bold']],
		\ 'N': ['brightred', 'darkestblue', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['gundo:static_str.buffer', 'command_t:raw.line'], {
		\ 'n': ['white', 'darkblue'],
		\ 'N': ['brightred', 'darkestblue'],
		\ }),
	\
	\ Pl#Hi#Segments(['gundo:SPLIT', 'command_t:SPLIT'], {
		\ 'n': ['white', 'darkblue'],
		\ 'N': ['white', 'darkestblue'],
		\ }),
	\ Pl#Hi#Segments(['lustyexplorer:static_str.name', 'minibufexplorer:static_str.name', 'nerdtree:raw.name', 'tagbar:static_str.name'], {
		\ 'n': ['white', 'mediumgreen', ['bold']],
		\ 'N': ['mediumgreen', 'darkestgreen', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['lustyexplorer:static_str.buffer', 'tagbar:static_str.buffer'], {
		\ 'n': ['brightgreen', 'darkgreen'],
		\ 'N': ['mediumgreen', 'darkestgreen'],
		\ }),
	\
	\ Pl#Hi#Segments(['lustyexplorer:SPLIT', 'minibufexplorer:SPLIT', 'nerdtree:SPLIT', 'tagbar:SPLIT'], {
		\ 'n': ['white', 'darkgreen'],
		\ 'N': ['white', 'darkestgreen'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:focus', 'ctrlp:byfname'], {
		\ 'n': ['brightpurple', 'darkestpurple'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:prev', 'ctrlp:next', 'ctrlp:pwd'], {
		\ 'n': ['white', 'mediumpurple'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:item'], {
		\ 'n': ['darkestpurple', 'white', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:marked'], {
		\ 'n': ['brightestred', 'darkestpurple', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:count'], {
		\ 'n': ['darkestpurple', 'white'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:SPLIT'], {
		\ 'n': ['white', 'darkestpurple'],
		\ }),
	\ ])
