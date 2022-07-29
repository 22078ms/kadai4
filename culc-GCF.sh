#!/bin/bash

# 引数が2個かどうかをチェック
if [ $# -ne 2 ] ; then
	echo "input 2 argments" 1>&2
	exit 1
fi

# 引数が2つとも自然数かどうかをチェック
input1=$1
expr $input1 + 1 >&/dev/null
ret=$?
if [ $ret -ge 2 ];then
	echo "input natural number"
	exit 1
fi
input2=$2
expr $input2 + 1 >&/dev/null
ret=$?
if [ $ret -ge 2 ];then
	echo "input natural number"
	exit 1
fi

# 最大公約数を求める  2つの引数が同じであれば、引数が最大公約数になる
if [ $input1 -eq $input2 ] ; then
	echo $input1
	exit 0
fi

# 最大公約数を求める  2つの引数が異なる場合は、ユーグリッドの互除法で求める
while [ $input1 -ne $input2 ] ;
do
	if [ $input1 -gt $input2 ];then
		input1=$(expr $input1 - $input2)
	else
		input2=$(expr $input2 - $input1)
	fi 
done 

#echo $input1
echo 3
exit 0
