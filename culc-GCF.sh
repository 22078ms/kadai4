#!/bin/bash

# 引数が2個かどうかをチェックし、2個でなければエラー終了
if [ $# -ne 2 ] ; then
	echo "input 2 argments"
	exit 1
fi

# 引数が2つとも自然数かどうかをチェックし、自然数でなければエラー終了
# 1つ目の引数のチェック
input1=$1
expr $input1 + 1 >&/dev/null
ret=$?
if [ $ret -ge 2 ];then
	echo "input natural number"
	exit 1
fi
if [ $input1 -lt 1 ];then
	echo "input natural number"
	exit 1
fi

# 2つ目の引数のチェック
input2=$2
expr $input2 + 1 >&/dev/null
ret=$?
if [ $ret -ge 2 ];then
	echo "input natural number"
	exit 1
fi
if [ $input2 -lt 1 ];then
	echo "input natural number"
	exit 1
fi

# ユーグリッドの互除法を使って、2つの入力値の最大公約数で求める
while [ $input1 -ne $input2 ] ;
do
	if [ $input1 -gt $input2 ];then
		input1=$(expr $input1 - $input2)
	else
		input2=$(expr $input2 - $input1)
	fi 
done 

# 2つの引数が同じ値になっているので、一方を出力する
echo $input1

#CIがこけるテスト用固定返却値
#echo 3

exit 0
