def caesar_cipher (msg, shift)
    if shift > 25 or shift <= 0
        return 'Shift must be between 1 and 25'
    end
    msg = msg.bytes # convert to ascii return array

    msg.map! do |n|
        if n.between?(65,90)
            if n+shift > 90
                n += 65 + shift - 91
            else
                n += shift
            end
        elsif n.between?(97,122)
            if n+shift > 122
                n += 97 + shift - 123
            else
                n += shift
            end
        else
            n
        end
    end
    
    msg.map! {|n| n.chr}
    msg.join('')
end
