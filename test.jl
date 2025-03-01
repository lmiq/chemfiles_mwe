function test(t)
    s = 0.0
    f = read_step(t,0)
    for i in 0:length(t)-1
        read_step!(t, i, f)
        p = positions(f)
        s += p[1,1]
    end
    return s
end

t = Trajectory("100.xtc")
for i in 1:20
    test(t)
end

