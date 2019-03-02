beginfig(21) ;
  draw fullsquare            withcolor .625red ;
  draw fullsquare rotated 45 withcolor .625red ;
  picture cp ; cp := currentpicture ;
  def copy = addto currentpicture also cp enddef ;
  copy scaled .9 withcolor .625white  ;
  copy scaled .7 withcolor .625yellow ;
  copy scaled .6 withcolor .625white  ;
  copy scaled .4 withcolor .625red    ;
  copy scaled .3 withcolor .625white  ;
  fill fullcircle scaled .2 withcolor .625yellow ;
  currentpicture := currentpicture scaled 50 ;
endfig ;
end .
