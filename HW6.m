maxSum = 0 ;

for i = 2 : 210
    i
    movingRegName = "1+" + int2str(i) + ".jpg" ;
    movingReg = imread( movingRegName ) ;

    imshow( movingReg ) ;
    h = drawline( 'Position', [459 251; 445 284], 'StripeColor', 'r' ) ;
    h.Selected = true ;

    mask = createMask( h ) ;
    [row,col] = find( mask ) ;

    pixelValueA = [] ;
    for j = 1:size(row,1)
      pixelValueA = [pixelValueA; movingReg(row(j), col(j))] ;
    end

    [maxA, IA] = max( pixelValueA ) ;

    movingRegName = "1+" + int2str(i+1) + ".jpg" ;
    movingReg = imread( movingRegName ) ;

    imshow( movingReg ) ;
    h = drawline( 'Position', [459 251; 445 284], 'StripeColor', 'r' ) ;
    h.Selected = true ;

    mask = createMask( h ) ;
    [row,col] = find( mask ) ;

    pixelValueB = [] ;
    for k = 1:size(row,1)
      pixelValueB = [pixelValueB; movingReg(row(k), col(k))] ;
    end

    [maxB, IB] = max( pixelValueB ) ;

    maxSum = maxSum + abs( int16(maxB) - int16(maxA) )
    
end











