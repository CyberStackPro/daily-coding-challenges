#!/bin/bash

PROBLEM_NUM=$1      
TITLE=$2            

if [ -z "$PROBLEM_NUM" ] || [ -z "$TITLE" ]; then
  echo "Usage: ./new-math.sh 001 multiples-of-3-or-5"
  exit 1
fi

for lang in js python rust c; do
  mkdir -p math-problems/$lang
done

touch math-problems/js/${PROBLEM_NUM}-${TITLE}.js
touch math-problems/python/${PROBLEM_NUM}-${TITLE}.py
touch math-problems/c/problem_${PROBLEM_NUM}.c
touch math-problems/rust/src/problem_${PROBLEM_NUM}.rs

# echo "| $PROBLEM_NUM | $PROBLEM_NAME | ❌ js, ❌ py, ❌ c, ❌ rust |" >> README.md

echo "Created math problem ${PROBLEM_NUM}-${TITLE} in all language folders."

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
