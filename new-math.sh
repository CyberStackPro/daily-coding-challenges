#!/bin/bash

PROBLEM_NUM=$1
TITLE=$2

if [ -z "$PROBLEM_NUM" ] || [ -z "$TITLE" ]; then
  echo "Usage: ./new-math.sh 001 multiples-of-3-or-5"
  exit 1
fi

BASE_DIR="math-problems"

# Create base directories if they don't exist
mkdir -p $BASE_DIR/js
mkdir -p $BASE_DIR/python
mkdir -p $BASE_DIR/c

# Initialize Rust project if it doesn't exist
if [ ! -d "$BASE_DIR/rust" ]; then
  echo "Initializing Rust project in $BASE_DIR/rust..."
  cargo init --name math_problems --bin "$BASE_DIR/rust"
else
  echo "Rust project already exists in $BASE_DIR/rust"
fi

# Ensure Rust src directory exists
mkdir -p "$BASE_DIR/rust/src"

# Create files
touch $BASE_DIR/js/${PROBLEM_NUM}-${TITLE}.js
touch $BASE_DIR/python/${PROBLEM_NUM}-${TITLE}.py
touch $BASE_DIR/c/problem_${PROBLEM_NUM}.c
touch $BASE_DIR/rust/src/problem_${PROBLEM_NUM}.rs

echo "✅ Created math problem '${PROBLEM_NUM} - ${TITLE}' in:"
echo "   - JavaScript → $BASE_DIR/js/${PROBLEM_NUM}-${TITLE}.js"
echo "   - Python     → $BASE_DIR/python/${PROBLEM_NUM}-${TITLE}.py"
echo "   - C          → $BASE_DIR/c/problem_${PROBLEM_NUM}.c"
echo "   - Rust       → $BASE_DIR/rust/src/problem_${PROBLEM_NUM}.rs"

# #!/bin/bash

# PROBLEM_NUM="$1"
# TITLE_RAW="$2"

# if [ -z "$PROBLEM_NUM" ] || [ -z "$TITLE_RAW" ]; then
#   echo "Usage: ./new-math.sh 001 \"Multiples of 3 or 5\""
#   exit 1
# fi

# # Format the title for filenames: kebab-case
# TITLE_FILE=$(echo "$TITLE_RAW" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

# # Format for table display
# TITLE_TABLE="$TITLE_RAW"

# # Create folders if not already
# for lang in js python rust c; do
#   mkdir -p math-problems/$lang
# done

# # Create files
# touch math-problems/js/${PROBLEM_NUM}-${TITLE_FILE}.js
# touch math-problems/python/${PROBLEM_NUM}-${TITLE_FILE}.py
# touch math-problems/rust/problem_${PROBLEM_NUM}.rs
# touch math-problems/c/problem_${PROBLEM_NUM}.c

# # Update README.md
# README_FILE="README.md"

# # Check if problem already exists in README
# if grep -q "| $PROBLEM_NUM |" "$README_FILE"; then
#   echo "Problem $PROBLEM_NUM already exists in README.md, skipping update."
# else
#   awk -v num="$PROBLEM_NUM" -v title="$TITLE_TABLE" '
#     BEGIN { added = 0 }
#     /^## ✅ Solved Problems/ {
#       print; getline; print; getline; print
#       print "| " num " | " title " | ❌ js, ❌ py, ❌ c, ❌ rust |"
#       added = 1
#       next
#     }
#     { print }
#     END {
#       if (!added) {
#         print ""; print "## ✅ Solved Problems (not found to insert!)"
#       }
#     }
#   ' "$README_FILE" > temp_README.md && mv temp_README.md "$README_FILE"

#   echo "✅ Added Problem $PROBLEM_NUM to README.md"
# fi

# echo "📁 Created problem ${PROBLEM_NUM}-${TITLE_FILE} in all languages."
