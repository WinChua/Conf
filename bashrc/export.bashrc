# export PS1='\u@\h:\W\$ '
# export VIMRUNTIME=/software/home/recsys/opt/vim/vim81/runtime
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

everycudo() {
    for i in {1..11}
    do
        var=cu`printf %02d $i`
        echo $var
        ssh $var $@
    done
}

function echoIP {
    echo "Hello"
}
