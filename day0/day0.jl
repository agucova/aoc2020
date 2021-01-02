using ClearStacktrace
ClearStacktrace.CONTRACT_USER_DIR[] = true

function findpair(numbers)
    for i in numbers
        for j in numbers
            if i + j == 2020
                return(i, j)
            end
        end
    end
    error("Couldn't find pair")
end

function findtriplet(numbers)
    for i in numbers
        for j in numbers
            for k in numbers
                if i + j + k == 2020
                    return(i, j, k)
                end
            end
        end
    end
    error("Couldn't find pair")
end

function main()
    numbers = []
    open("inputs/day0.inp") do input
        numbers = sort(parse.(Int, readlines(input)))
    end
    pair = findpair(numbers)
    i, j = pair[1], pair[2]
    display(i * j)

    triplet = findtriplet(numbers)
    i, j, k = triplet[1], triplet[2], triplet[3]
    display(i * j * k)
end

main()