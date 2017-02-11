function ripgrep_glob
    echo $argv | read --local first rest
    echo $first
    switch $first
        case '*\**'
            echo "2"
            rg --files -g $argv
        case '*'
            echo "1"
            echo "'*$first*'"
            echo $rest
            rg --files -g "'*$first*'"
    end
end
