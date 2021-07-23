# Find TRUE and replace with true in all .c and .h files
grep -rl --include \*.h --include \*.c "TRUE" . | xargs sed -i 's/TRUE/true/g'
