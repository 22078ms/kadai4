#!/bin/bash

# テストケース1　2つの数字を入力　同じ数字
# (入力）5 5 -> (出力）5
echo "5" > /tmp/z22078ms$$-ans # 他のユーザと競合を避けるため、ファイル名に学生番号を付与
./culc-GCF.sh 5 5 > /tmp/z22078ms$$-result
diff /tmp/z22078ms$$-ans /tmp/z22078ms$$-result || exit 1

# テストケース2　2つの数字を入力　異なる自然数（1つ目の数字の方が大きい）
# (入力）35 28 -> (出力）7
echo "7" > /tmp/z22078ms$$-ans
./culc-GCF.sh 35 28 > /tmp/z22078ms$$-result
diff /tmp/z22078ms$$-ans /tmp/z22078ms$$-result || exit 1

# テストケース3　2つの数字を入力　異なる自然数（2つ目の数字の方が大きい）
# (入力）28 35 -> (出力）7
echo "7" > /tmp/z22078ms$$-ans
./culc-GCF.sh 28 35 > /tmp/z22078ms$$-result
diff /tmp/z22078ms$$-ans /tmp/z22078ms$$-result || exit 1

# テストケース4　2つの数字を入力　自然数と小数
# (入力）2 0.5 -> (出力）input natural number
echo "input natural number" > /tmp/z22078ms$$-ans
./culc-GCF.sh 2 0.5 > /tmp/z22078ms$$-result
diff /tmp/z22078ms$$-ans /tmp/z22078ms$$-result || exit 1

# テストケース5　2つの数字を入力　自然数と負の数
# (入力）2 -2 -> (出力）input natural number
echo "input natural number" > /tmp/z22078ms$$-ans
./culc-GCF.sh 2 -2 > /tmp/z22078ms$$-result
diff /tmp/z22078ms$$-ans /tmp/z22078ms$$-result || exit 1

# テストケース6　2つの数字を入力　負の数と自然数
# (入力）-2 2 -> (出力）input natural number
echo "input natural number" > /tmp/z22078ms$$-ans
./culc-GCF.sh -2 2 > /tmp/z22078ms$$-result
diff /tmp/z22078ms$$-ans /tmp/z22078ms$$-result || exit 1

# テストケース7　2つの数字を入力　負の数と負の数
# (入力）-2 -2 -> (出力）input natural number
echo "input natural number" > /tmp/z22078ms$$-ans
./culc-GCF.sh -2 -2 > /tmp/z22078ms$$-result
diff /tmp/z22078ms$$-ans /tmp/z22078ms$$-result || exit 1

# テストケース8　1つの数字と1つの文字を入力
# (入力）2 a -> (出力）input natural number
echo "input natural number" > /tmp/z22078ms$$-ans
./culc-GCF.sh 2 a > /tmp/z22078ms$$-result
diff /tmp/z22078ms$$-ans /tmp/z22078ms$$-result || exit 1

# テストケース9　1つの数字を入力
# (入力）2 -> (出力）input 2 argments
echo "input 2 argments" > /tmp/z22078ms$$-ans
./culc-GCF.sh 2 > /tmp/z22078ms$$-result
diff /tmp/z22078ms$$-ans /tmp/z22078ms$$-result || exit 1

# テストケース10　1つの文字を入力
# (入力）a -> (出力）input 2 argments
echo "input 2 argments" > /tmp/z22078ms$$-ans
./culc-GCF.sh a > /tmp/z22078ms$$-result
diff /tmp/z22078ms$$-ans /tmp/z22078ms$$-result || exit 1

# 後処理　テンポラリーファイルを削除する
rm /tmp/z22078ms$$-*

