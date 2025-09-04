#!/bin/bash

PROBLEM_NUM=$1
TITLE=$2

if [ -z "$PROBLEM_NUM" ] || [ -z "$TITLE" ]; then
  echo "Usage: ./tools/new-logic.sh 001 calorie-counting"
  exit 1
fi

for lang in js python rust c; do
  mkdir -p logic-puzzles/$lang
done

mkdir -p logic-puzzles/input

touch logic-puzzles/js/${PROBLEM_NUM}-${TITLE}.js
touch logic-puzzles/python/${PROBLEM_NUM}-${TITLE}.py
touch logic-puzzles/rust/${PROBLEM_NUM}_${TITLE}.rs
touch logic-puzzles/c/${PROBLEM_NUM}_${TITLE}.c
touch logic-puzzles/input/${PROBLEM_NUM}-${TITLE}.txt

echo "Created logic puzzle ${PROBLEM_NUM}-${TITLE} in all language folders."
