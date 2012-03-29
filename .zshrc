autoload -U compinit compinit

zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

setopt correctall

autoload -U promptinit
promptinit
alias ls='ls -ltrh --color=auto'
alias vi=vim
alias emerge='sudo emerge'
alias tail='tail -3000f'

prompt clint

export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export PATH=$PATH:/opt/devkitpro/devkitARM/bin
export CPATH="/usr/local/boost_1_48_0/"
export LIBRARY_PATH="/usr/local/boost_1_48_0/stage/lib":$LIBRARY_PATH
export LD_LIBRARY_PATH="/usr/local/boost_1_48_0/stage/lib":$LD_LIBRARY_PATH

export SAVEHIST=$HISTSIZE

setopt hist_ignore_all_dups

setopt hist_ignore_space

setopt autocd

setopt extendedglob

function sprunge
{
    cat $1 | curl -F 'sprunge=<-' http://sprunge.us
}


function imageshack {
    if [[ ! -e ~/.imgshack && -e ~/.imgshackrc ]]; then
        . ~/.imgshackrc
        curl -s -c ~/.imgshack -b ~/.imgshack -H Expect: -F "username=${USERNAME}" -F "password=${PASSWORD}" -F 'stay_logged_in=true' -F 'format=json' www.imageshack.us/auth.php
    fi

    if [[ -e ~/.imgshack ]]; then
        link=$(curl -s -D - -c ~/.imgshack -b ~/.imgshack -F "fileupload=@${1}" -F 'refer=http://my.imageshack.us/v_images.php' -F 'MAX_FILE_SIZE=13145728' -F 'uploadtype=on' -F 'optimage=resample' -F 'optsize=resample' -F 'rembar=0' www.imageshack.us/index.php | grep -i 'location: ' | cut -c 11- | sed -r 's/content_round\.php\?page=done&l=//')
    else
        link=$(curl -s -H Expect: -F "fileupload=@${1}" -F xml=yes http://www.imageshack.us/index.php | grep -E '<image_link>(.+?)</image_link>' | grep -o 'http://[^<]*')
    fi

    if [[ -z "${link}" ]]; then
        link="Failed to upload image"
    fi

    echo "${link}"
}

function imagebanana {
    local link=$(curl -s -L -H Expect: -F "img=@${1}" -F 'send=Hochladen!' imagebanana.com | grep '\[IMG\]' | sed -r 's/.*\[IMG\]|\[\/IMG\].*//g' | tail -n 1)
    if [[ -z "${link}" ]]; then
        link="Failed to upload image"
    fi

    echo "${link}"
}
export LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;41:ow=34;41:st=30;41:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.pdf=00;32:*.ps=00;32:*.txt=00;32:*.patch=00;32:*.diff=00;32:*.log=00;32:*.tex=00;32:*.doc=00;32:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:"
export PATH=$PATH:/usr/sbin
