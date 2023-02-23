function note(){
    echo "date: $(date)" >> $HOME/note.txt
    echo "$@" >> $HOME/note.txt
    echo "" >> $HOME/note.txt
}

function take (){
    mkdir -p $1
    cd $1
}

function fanauto (){
    nbfc set -f 0 -a
    nbfc set -f 1 -a
}

function fanspeed (){
    nbfc set -f 0 -s $1
    nbfc set -f 1 -s $1
}

function bconnect () {
    HEADPHONE_MAC='' # Your Wireless headphone mac addresss goes here
    PULSEAUDIO_DEFAULT_BSINK='' # The default pulseaudio sink value goes here

    bluetoothctl power on
    bluetoothctl connect $HEADPHONE_MAC
    pactl set-default-sink $PULSEAUDIO_DEFAULT_BSINK
}

function activate (){
    source $HOME/.envs/$1/bin/activate  # I have all my python env inside ~/.envs
}
