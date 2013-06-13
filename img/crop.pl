# cut a picture animation into different frames
use 5.10.0;
my $image = 'Muybridge.jpg';
my $numframes = 7;
my $top = 285;
my $left = 1;
my $width = 53;
my $height = 115;
my $spacing = 5;
my $position = $left;

for my $i (1 .. $numframes) {
  my $cmd = "convert -crop ${width}x$height+$position+$top Muybridge.jpg woman$i.jpg";
  say $cmd;
  `$cmd`;
  $position += $width + $spacing;
}
