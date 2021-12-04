import sys

file_path = sys.argv[1]

with open(file_path) as f:
    print(f.readlines())
