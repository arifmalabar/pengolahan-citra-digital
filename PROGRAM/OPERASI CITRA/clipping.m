function J = clipping(I)
for x = 1 : size(I)
   for y = 1 : size(I)
      if I(x,y) > 255
         J(x,y) = 255;
      elseif I(x,y) < 0
             J(x,y) = 0;
      else
             J(x,y) = I(x,y);
      end
   end
end