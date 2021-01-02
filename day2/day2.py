def is_valid_old(limits: str, character: str, password: str) -> bool:
    lower, upper = [int(v) for v in limits.split("-")]
    return lower <= password.count(character) <= upper


def is_valid_new(limits: str, character: str, password: str) -> bool:
    lower, upper = [int(v) - 1 for v in limits.split("-")]
    return (password[lower] == character) ^ (password[upper] == character)


with open("inputs/day2.inp") as f:
    lines = [line.strip("\n").replace(":", "").split(" ") for line in f.readlines()]

# Part 1
count1 = 0
for line in lines:
    if is_valid_old(line[0], line[1], line[2]):
        count1 += 1
print(count1)

# Part 2
count2 = 0
for line in lines:
    if is_valid_new(line[0], line[1], line[2]):
        count2 += 1
print(count2)
