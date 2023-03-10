function second = hoursToSecond(hours)

    arguments
        hours {mustBeNonnegative}
    end

    second = 3600 * hours;
end