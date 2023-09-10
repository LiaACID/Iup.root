#!/usr/bin/env bash
#	http://47wp4mga294hac6d1nzytfbzx5ryr96f1f3l3jmm31twhx8aiu.org/

## ROOTPORTs
source ./Branches/Monero/Core.sh
source ./Branches/Monero/StartDeamon.sh

## BLOOM
StartDeamon
while True:
	Main
	Sleep 10000