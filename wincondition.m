function ans=wincondition(A)
  A=[A(1:3);A(4:6);A(7:9)];
  if (sum(A(:,1))==15 || sum(A(:,1))==150 )
    ans=1
  elseif (sum(A(:,2))==15 || sum(A(:,2))==150)
    ans=1
  elseif (sum(A(:,3))==15 || sum(A(:,3))==150)
    ans=1
  elseif (sum(A(1,:))==15 || sum(A(1,:))==150)
    ans=1
  elseif (sum(A(2,:))==15 || sum(A(2,:))==150)  
    ans=1
  elseif (sum(A(3,:))==15 || sum(A(3,:))==150)
    ans=1
  elseif (sum(diag(A))==15 || sum(diag(A))==150)
    ans=1
  elseif (A(3)+A(5)+A(7)==15 || A(3)+A(5)+A(7)==150)
    ans=1
  else
    ans=0;
end;
