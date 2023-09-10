## ROOTPORTs
source .Settings.sh
source .Core.sh

MoneroSend () {
	echo MoneroSend
	# Send Monero
$monero_cli --wallet-file $wallet_file --password $wallet_password \send --destinations $DEST:$AMOUNT}