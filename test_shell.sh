#!/bin/sh

exec_cmd()
{
	export USER=$2
	echo $USER
	sleep 5
}

exec_cmd pass '"aaa"/"aaa"' &
exec_cmd pass '"bbb"/"bbb"' &
exec_cmd pass '"ccc"/"ccc"' &

wait 
