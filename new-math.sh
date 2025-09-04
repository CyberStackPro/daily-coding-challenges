#!/bin/bash

PROBLEM_NUM=$1      
TITLE=$2            

if [ -z "$PROBLEM_NUM" ] || [ -z "$TITLE" ]; then
  echo "Usage: ./tools/new-math.sh 001 multiples-of-3-or-5"
  exit 1
fi

for lang in js python rust c; do
  mkdir -p math-problems/$lang
done

touch math-problems/js/${PROBLEM_NUM}-${TITLE}.js
touch math-problems/python/${PROBLEM_NUM}-${TITLE}.py
touch math-problems/rust/problem_${PROBLEM_NUM}.rs
touch math-problems/c/problem_${PROBLEM_NUM}.c

echo "Created math problem ${PROBLEM_NUM}-${TITLE} in all language folders."
