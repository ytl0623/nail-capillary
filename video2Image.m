vid = VideoReader( "2.avi" ) ;
numFrames = vid.NumberOfFrames ;
n = numFrames ;

for i = 1:1:n
  frames = read( vid, i ) ;
  imwrite( frames, [ 'Image' int2str(i), '.jpg' ] ) ;
  im( i ) = image( frames ) ;
  i
end
