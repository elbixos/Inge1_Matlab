function angle = compass2Degree(direction)

directionValues = 0:22.5:337.5
directionNames = {'N','NNE','NE','ENE','E','ESE','SE','SSE','S','SSW','SW','WSW','W','WNW','NW','NNW'};
directionValues(strcmp(directionNames,direction))
end
