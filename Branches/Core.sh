## ROOTPORTs
source ./Monero/Settings.sh
source ./Monero/MoneroSend.sh
source ./Monero/GetBalance.sh

Main () {
	echo Main
	#       Out=Total/UserCount(Range)
	T=$(GetBalance)
	U=$(cat /etc/passwd | grep -x '.\{80,150\}'| wc -l)
	for USER in $(cat /etc/passwd);do 
		AMOUNT=$(echo $T/$U | bc -l) ;echo $OUT : $USER ; MoneroSend $DEST $AMOUNT; done}
	echo Success
}