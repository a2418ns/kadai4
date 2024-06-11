#!/bin/bash

# テスト関数
test_gcd() {
  local expected=$1
  local a=$2
  local b=$3

  result=$(./gcd.sh $a $b)
  if [ "$result" -ne "$expected" ]; then
    echo "Test failed: gcd($a, $b) = $result, expected $expected"
    exit 1
  else
    echo "Test passed: gcd($a, $b) = $result"
  fi
}

# テストケース
test_gcd 6 54 24
test_gcd 1 17 19
test_gcd 5 10 15

# エラーチェック
./gcd.sh 1 0 && exit 1 || echo "Test passed: Error check (1 0)"
./gcd.sh 0 1 && exit 1 || echo "Test passed: Error check (0 1)"
./gcd.sh a b && exit 1 || echo "Test passed: Error check (a b)"
./gcd.sh 1 && exit 1 || echo "Test passed: Error check (1)"
./gcd.sh && exit 1 || echo "Test passed: Error check ()"

