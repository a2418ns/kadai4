#!/bin/bash

# 最大公約数を計算する関数
gcd() {
  local a=$1
  local b=$2
  while [ $b -ne 0 ]; do
    local temp=$b
    b=$((a % b))
    a=$temp
  done
  echo $a
}

# 入力の検証
if [ $# -ne 2 ]; then
  echo "Usage: $0 num1 num2"
  exit 1
fi

# 引数が自然数かどうかの確認
if ! [[ $1 =~ ^[1-9][0-9]*$ ]] || ! [[ $2 =~ ^[1-9][0-9]*$ ]]; then
  echo "Both arguments must be natural numbers."
  exit 1
fi

# 最大公約数を計算して出力
gcd $1 $2

