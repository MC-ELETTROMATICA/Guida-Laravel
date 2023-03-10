function [degree, radiant] = pointToAngle(Axes)
    
    arguments
        Axes (1,2) {mustBeNumeric}
    end

     degree = atan2d(Axes(1), Axes(2));
    radiant = (degree*pi)/180;
end


