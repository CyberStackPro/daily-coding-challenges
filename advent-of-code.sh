#!/bin/bash

PROBLEM_NUM=$1
TITLE=$2
YEAR=$3

# Validate inputs
if [ -z "$PROBLEM_NUM" ] || [ -z "$TITLE" ]; then
  echo "Usage: ./tools/new-advent-of-code.sh 001 historian_hysteria 2024"
  exit 1
fi

# Default to current year if not given
if [ -z "$YEAR" ]; then
  YEAR=$(date +%Y)
fi

# Define base path
BASE_DIR="advent-of-code/$YEAR"
RUST_DIR="$BASE_DIR/rust"
PY_DIR="$BASE_DIR/python"
JS_DIR="$BASE_DIR/js"
C_DIR="$BASE_DIR/c"

# Create language folders if they don't exist
mkdir -p "$PY_DIR" "$JS_DIR" "$C_DIR"

# -------------------------
# 🦀 Rust setup with Cargo
# -------------------------
if [ ! -d "$RUST_DIR" ]; then
  echo "Rust project not found for $YEAR. Initializing with Cargo..."
  cargo new "$RUST_DIR" --vcs none
else
  echo "Rust project already exists."
fi

# Create Rust source file
RUST_FILE="$RUST_DIR/src/problem_${PROBLEM_NUM}_${TITLE}.rs"
touch "$RUST_FILE"

# -------------------------
# 🐍 Python, JS, C files
# -------------------------
touch "$PY_DIR/${PROBLEM_NUM}-${TITLE}.py"
touch "$JS_DIR/${PROBLEM_NUM}-${TITLE}.js"
touch "$C_DIR/problem_${PROBLEM_NUM}_${TITLE}.c"

# -------------------------
# ✅ Final Output
# -------------------------
echo "✅ Created Advent of Code problem $PROBLEM_NUM ($TITLE) for year $YEAR:"
echo "  - $PY_DIR/${PROBLEM_NUM}-${TITLE}.py"
echo "  - $JS_DIR/${PROBLEM_NUM}-${TITLE}.js"
echo "  - $C_DIR/problem_${PROBLEM_NUM}_${TITLE}.c"
echo "  - $RUST_FILE"
echo "Happy coding! 🎄👾"