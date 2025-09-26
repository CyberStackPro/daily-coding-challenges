

def parse_input(file_path):
    left = []
    right = []
    with open(file_path, 'r') as file:
        for line in file:
            if not line.strip():
                continue
            parts = line.strip().split()
            if len(parts) == 2:
                a, b = map(int, parts)
                left.append(a)
                right.append(b)
    return left, right

def total_distance(left, right):
    left_sorted = sorted(left)
    right_sorted = sorted(right)
    distances = [abs(a - b) for a, b in zip(left_sorted, right_sorted)]
    return sum(distances)

if __name__ == "__main__":
    left, right = parse_input("input.txt")
    result = total_distance(left, right)
    print(f"Total distance: {result}")