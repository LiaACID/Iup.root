## ROOTPORTs
source Settings.sh

GetBal () {
	echo GetBalance
	# Get Monero balance
	balance_info=$($monero_cli --wallet-file $wallet_file --password $wallet_password \balance)  
	# Extract the balance values
	unlocked_balance=$(echo "$balance_info" | awk '/Unlocked balance:/ { print $4 }')
echo $unlocked_balance"}
