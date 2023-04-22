function note(){
    echo "date: $(date)" >> $HOME/.note/note.txt
    echo "$@" >> $HOME/.note/note.txt
    echo "" >> $HOME/.note/note.txt
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
    HEADPHONE_MAC='75:69:25:84:4F:D4'
    PULSEAUDIO_DEFAULT_BSINK='bluez_sink.75_69_25_84_4F_D4.a2dp_sink'

    bluetoothctl power on
    bluetoothctl connect $HEADPHONE_MAC
    pactl set-default-sink $PULSEAUDIO_DEFAULT_BSINK
}

function activate (){
    source $HOME/.env/$1/bin/activate 
}

