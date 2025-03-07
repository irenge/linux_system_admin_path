#!/bin/bash

distro = $(grep -Poi '(debian|ubuntu|red hat|centos|gentoo|arch)' | uniq)

users=("linda" "laura" "anna" "anouk")
for user in ${users[@]}; do
	useradd -m $user
	echo "$user:password" | sudo chpasswd
done

