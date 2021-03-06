def num_paths(startsum : Int,lastcoin : Int)
    return 1 if (startsum==250)

    paths = 0
    [1,2,5,10,20,50,100,200].each do |coin|
        if (lastcoin >= coin) && (startsum <= (250-coin))
            paths = paths + num_paths(startsum+coin, coin)
        end
    end

    paths
end

puts(num_paths(ARGV[0].to_i, ARGV[1].to_i))
