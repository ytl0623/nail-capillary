% Estimate displacement field that aligns two 2-D or 3-D images
fixedName = "Image1.jpg" ;

for i = 200 : 598
    i
    fixed = imread( fixedName ) ;
    movingName = "Image" + int2str(i) + ".jpg" ;
    moving = imread( movingName ) ;
    fixed = fixed( :, :, 2 ) ;
    moving = moving( :, :, 2 ) ;
 
    moving = imhistmatch( moving, fixed ) ;
    [~,movingReg] = imregdemons( moving, fixed, [500 400 200], 'AccumulatedFieldSmoothing', 1.3 ) ;
    outName = "1+" + int2str(i) + ".jpg" ;
    imwrite( movingReg, outName ) ;
end