-- greatest common divisor using Euklid's algorithm
function gcd(a, b)
    while a ~= b do
        if a > b then a = a - b else b = b - a end
    end
    return a
end

-- create test vectors
function get_streams()
    input_a = {}
    input_b = {}
    output = {}
    for i = 1, 39 do
        d = math.random(1, 10)
        input_a[i] = d * math.random(1, 10)
        input_b[i] = d * math.random(1, 10)
        output[i] = gcd(input_a[i], input_b[i])
    end
    return {
        { STREAM_INPUT, "IN.A", 1, input_a },
        { STREAM_INPUT, "IN.B", 2, input_b },
        { STREAM_OUTPUT, "OUT.A", 2, output },
    }
end
