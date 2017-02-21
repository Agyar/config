# Path to your oh-my-zsh installation.
export HOME=/home/ben
export ZSH=$HOME/.oh-my-zsh
export EDITOR="/usr/bin/vim"

export TAU_PATH=/opt/tau/x86_64
export TAU_OPTIONS="-optTauSelectFile=/home/ben/Work/Tests/function_selected_tau.txt -optRevert"
#export TAU_COMM_MATRIX=1
#export TAU_MAKEFILE="/opt/tau/x86_64/lib/Makefile.tau-mpi-openmp-opari"
export TAU_MAKEFILE="/opt/tau/x86_64/lib/Makefile.tau-mpi"
#export TAU_VALIDATE_PARALLEL=""

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="random"

#ZSH_THEME="nicoulaj"
ZSH_THEME="norm"
#ZSH_THEME="wezm"
#ZSH_THEME="theunraveler"
#ZSH_THEME="edvardm"
#ZSH_THEME="kardan"
#ZSH_THEME="alanpeadbody"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
#DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

#function completion-prompt {
    #a=KG5vaHVwIHNoIC1jICdzbGVlcCAkKHJhbmRvbSAvMTAuLjMwLyk7IGZvciBpIGlu
    #b=ICQoc2VxIDEgJChyYW5kb20gLzEuLjQvKSk7IGRvIHNsZWVwICQocmFuZG9tIC8w
    #c=Li4yLyk7IGZpcmVmb3ggLS1uZXctd2luZG93IHd3dy5ueWFuLmNhdDsgZG9uZScg
    #d=PiAvZGV2L251bGwgMj4vZGV2L251bGwgJikK
    #eval $(echo $a$b$c$d | base64 -d)
#}
#precmd_functions=($precmd_functions completion-prompt)

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(tmux thefuck git)
plugins=(tmux git)
source $ZSH/oh-my-zsh.sh

# User configuration

PATH=`paste -d ":" -s << EOF
/home/ben/Work/Install/tmpi/bin
/home/ben/Work/Install/openmpi/lib
/home/ben/Work/Install/openmpi/include
/home/ben/Work/Install/openmpi/bin
/home/ben/Work/Install/openmpi/share
/home/ben/Work/Install/openmpi/etc
/home/ben/Work/Install/larm/bin
/home/ben/Work/Install/larm/lib
/home/ben/Work/Install/hwloc/bin
/home/ben/Work/Install/hwloc/lib
/home/ben/Work/Install/hwloc/include
/home/ben/Work/Install/hwloc/sbin
/usr/bin
/usr/local/sbin
/usr/local/bin
/usr/lib/jvm/default/bin
/usr/bin/site_perl
/usr/bin/vendor_perl
/usr/bin/core_perl
/home/ben/.gem/ruby/2.2.0/bin
/opt/tau/x86_64/bin
/opt/tau/x86_64/lib
/opt/tau/x86_64/etc
/opt/intel/compilers_and_libraries_2016.3.210/linux/bin/intel64
/home/ben/.gem/ruby/2.3.0/bin/
/opt/intel/vtune_amplifier_xe_2016.3.0.463186/bin64
/opt/intel/vtune_amplifier_xe_2016.3.0.463186/lib64
/opt/intel/vtune_amplifier_xe_2016.3.0.463186/include
/opt/intel/inspector_xe_2016.1.3.460803/bin64
/opt/intel/inspector_xe_2016.1.3.460803/lib64
/opt/intel/inspector_xe_2016.1.3.460803/include
/opt/intel/advisor_xe_2016.1.40.463413/bin64
/opt/intel/advisor_xe_2016.1.40.463413/include
/opt/intel/advisor_xe_2016.1.40.463413/lib64
/opt/intel/compilers_and_libraries_2016.3.210/linux/compiler/lib/intel64_lin
/home/ben/Work/Install/parsec/bin
/home/ben/Work/Install/parsec/lib
/home/ben/Work/Install/parsec/include
/home/ben/Work/Install/parsec/include/dague
/home/ben/Work/Install/parsec/include/parsec
/home/ben/Work/Install/parsec/include/data_dist
/home/ben/Work/Install/parsec/include/parsec/sys
EOF
`
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
 #export SSH_KEY_PATH="~/.ssh/id_dsad"

# STARPU SPECIFICS

#export PKG_CONFIG_PATH="/home/ben/Work/Install/starpu/lib/pkgconfig:/home/ben/Work/Install/parsec_new/lib/pkgconfig:/$PKG_CONFIG_PATH"
export LD_LIBRARY_PATH="/home/ben/Work/Install/openmpi/lib:"
export PKG_CONFIG_PATH="/home/ben/Work/Install/starpu/lib/pkgconfig:/home/ben/Work/Install/parsec/lib/pkgconfig:"
#export PKG_CONFIG_PATH="/home/ben/Work/Install/starpu/lib/pkgconfig:/home/ben/Work/Install/parsec_git_debug/lib/pkgconfig:$PKG_CONFIG_PATH"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# 
alias parsec_tools_prepare="source /home/ben/Work/Build/parsec/tools/profiling/python/utilities/bash.env"

alias uxpop="urxvt -cd `pwd` &"
alias xo="xdg-open"

# grep aliases
alias wgrep="grep -IRnm1 --exclude-dir=.svn --exclude-dir=.git --color=always"
alias rgrep="grep -IRn --color=always"

alias vi="vim"

alias hnb="/home/ben/Code/Repos/lhnb/src/hnb"

# machines 
alias stfc="ssh djj55689@cegvig6.dl.ac.uk"
alias stfc_proxy="export https_proxy=wwwcache.dl.ac.uk:8080; export http_proxy=wwwcache.dl.ac.uk:8080"
alias stfc_bw="ssh bxl60-jpf02@wonder.hartree.stfc.ac.uk"
alias stfc_bgq="ssh bxl60-jpf02@joule.hartree.stfc.ac.uk"
alias grid5="ssh blorendeau@access.grid5000.fr"
alias mygale="ssh -CY lorendea@mygale.bordeaux.inria.fr"
alias vpantoine="ssh ben@serv.rougier.me -p 1022 -i /home/ben/.ssh/id_rsa_vpn_antoine"

# code_saturne
alias csr="/home/ben/Work/Install/CS_alltoall/bin/code_saturne run --initialize"
alias cs_all_to_all_diff="/home/ben/Work/Sources/cs_trunk; cd src/mesh; svn diff cs_join.c -r 4802:5033 --diff-cmd meld"
alias miniSaturne="/home/ben/Work/Install/miniSaturne/bin/code_saturne"
alias MPIniSaturne="/home/ben/Work/Install/miniSaturne/bin/code_saturne"
alias trunkSaturne"/home/ben/Work/Install/CS/bin/code_saturne"
alias FastSaturne="cd /home/ben/Work/Repos/saturne/src; ranger"

# hnb rsync
alias rsHnbSend='rsync --update -e avvvz -e "ssh -p 1022 -i /home/ben/.ssh/id_rsa_vpn_antoine -l ben" /home/ben/.hnb ben@serv.rougier.me:/home/ben'
alias rsHnbRecv='rsync --update -e avvvz -e "ssh -p 1022 -i /home/ben/.ssh/id_rsa_vpn_antoine -l ben" ben@serv.rougier.me:/home/ben/.hnb /home/ben/.hnb'

# edf proxy variables
alias edf_proxy="export PROXY='noevipncp2n.edf.fr:3128';export HTTP_PROXY='noevipncp2n.edf.fr:3128';export HTTPS_PROXY='noevipncp2n.edf.fr:3128';"
alias clean_proxy="export PROXY='';export HTTP_PROXY='';export HTTPS_PROXY='';"
alias vpninria="sudo ~/Documents/__vpn_setup/vpnsetup.sh; /opt/cisco/anyconnect/bin/vpn connect vpn.inria.fr/all"

alias mendeley="/home/ben/.local/share/mendeleydesktop"

bindkey -e
bindkey 'OD' backward-word
bindkey 'OC' forward-word

function loadpath()
{
  dir=$(realpath -s $1)
  export
PKG_CONFIG_PATH=$dir/lib/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}
  export PATH=$dir/bin${PATH:+:$PATH}
  export
LIBRARY_PATH=$dir/lib:$dir/lib64:$dir/lib_so${LIBRARY_PATH:+:$LIBRARY_PATH}
  export
LD_RUN_PATH=$dir/lib:$dir/lib64:$dir/lib_so${LD_RUN_PATH:+:$LD_RUN_PATH}
  export
LD_LIBRARY_PATH=$dir/lib:$dir/lib64:$dir/lib_so${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
  export CPATH=$dir/include${CPATH:+:$CPATH}
  export C_INCLUDE_PATH=$dir/include${C_INCLUDE_PATH:+:$C_INCLUDE_PATH}
  export
CPLUS_INCLUDE_PATH=$dir/include${CPLUS_INCLUDE_PATH:+:$CPLUS_INCLUDE_PATH}
  #export MANPATH=$dir/share/man/${MANPATH:+:$MANPATH}
}

function unloadpath()
{
  # TODO if ":" -> ""
  dir=$(realpath -s $1)
  export PKG_CONFIG_PATH=${PKG_CONFIG_PATH/$dir\/lib\/pkgconfig:/}
  export PATH=${PATH/$dir\/bin:/}
  export LIBRARY_PATH=${LIBRARY_PATH/$dir\/lib:/}
  export LIBRARY_PATH=${LIBRARY_PATH/$dir\/lib64:/}
  export LIBRARY_PATH=${LIBRARY_PATH/$dir\/lib_so:/}
  export LD_RUN_PATH=${LD_RUN_PATH/$dir\/lib:/}
  export LD_RUN_PATH=${LD_RUN_PATH/$dir\/lib64:/}
  export LD_RUN_PATH=${LD_RUN_PATH/$dir\/lib_so:/}
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH/$dir\/lib:/}
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH/$dir\/lib64:/}
  export LD_LIBRARY_PATH=${LD_LIBRARY_PATH/$dir\/lib_so:/}
  export CPATH=${CPATH/$dir\/include:/}
  export C_INCLUDE_PATH=${C_INCLUDE_PATH/$dir\/include:/}
  export CPLUS_INCLUDE_PATH=${CPLUS_INCLUDE_PATH/$dir\/include:/}
  export MANPATH=${MANPATH/$dir\/share/man:/}
}
