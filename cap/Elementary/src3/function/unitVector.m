function [x,y] = unitVector(angle, type)

    if type == 1
        angle = deg2rand(angle);
    end

    x = cos(angle);
    y = sin(angle);
end