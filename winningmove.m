function [ans]=winningmove(A,num)
  %%Transforming A to matrix form
  B=A;
  A=[A(1:3);A(4:6);A(7:9)];
  
  d2=[A(1,3) A(2,2) A(3,1)];
  alt=[1 4 7 2 5 8 3 6 9];
  ans=0;
  if (sum(A(1,:))==num)
    ans=find(A(1,:)==0);
    %1
  elseif (sum(A(2,:))==num)  
    ans=3+find(A(2,:)==0);
    %2
  elseif (sum(A(3,:))==num)
    ans=6+find(A(3,:)==0);
    %3
  elseif (sum(A(:,1))==num)
    ans=alt(find(A'(1,:)==0));
    %4
  elseif (sum(A(:,2))==num)
    ans=alt(3+find(A'(2,:)==0));
    %5
  elseif (sum(A(:,3))==num)
    ans=alt(6+find(A'(3,:)==0));
    %6
  elseif (sum(diag(A))==num)
    if (B(1)==0)
      ans=1;
    elseif (B(5)==0)
      ans=5;
    else
      ans=9;
    endif;
    %7
  elseif (A(1,3)+A(2,2)+A(3,1)==num)
    if (B(3)==0)
      ans=3;
    elseif (B(5)==0)
      ans=5;
    else
      ans=7;
    endif;
    %8
  else
    ans=0;
  endif;
    
   
end;