class Bottles
    def song()
        verses(99, 0)
    end

    def verses(n, m)
        d = ""
        loop do
            d << verse(n)

            if (n != m)
                d << "\n"
            end
            n = n - 1
        break if  (n < m)
        end
        return d
    end

    def verse(n)
        return <<-VERSE
#{getNumberedText("bottle", n, 1).capitalize} of beer on the wall, #{getNumberedText("bottle", n, 1)} of beer.
#{getVerseLine(n)}, #{getNumberedText("bottle", n - 1, 1)} of beer on the wall.
VERSE
    end

    def getNumberedText(base_text, n, m)
        # if {n} == {m}, {base_text} else {conditional_text}
        result = "#{n == 0 ? "no more": n % 100} #{n == m ? base_text : base_text + "s"}"
    end

    def getVerseLine(n)
        return n == 0 ? "Go to the store and buy some more" : "Take #{n == 1 ? "it" : "one"} down and pass it around"
    end

    #template
    # {n} text, [{n} / No more] [bottle / bottles] [of beer on the wall[,]]
    # {n} text. [{n} / no more] [bottle / bottles] [of beer[.]]
    # text,     [Take [one/it] down and pass it around, / Go to the store  and buy some more[,]] 
    # {n} text. [{n} / no more] [bottle / bottles] [of beer on the wall[.]]

    # meant for creating [{n} / No more] [bottle / bottles]
end