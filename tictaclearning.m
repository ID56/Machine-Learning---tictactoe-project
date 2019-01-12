clear ; close all; clc

input_layer_size  = 9;  
num_labels = 9;         

[X,y]=game(1000);
m = size(X, 1);

fprintf('Program paused. Press enter to continue.\n');
pause;


fprintf('\nTraining One-vs-All Logistic Regression...\n')

lambda = 0;
[all_theta] = oneVsAll(X, y, num_labels, lambda);


A=zeros(1,9);
p=0;
for turn=1:9
  if (mod(turn,2)==1)
    p=1;
    pos= predictOneVsAll(all_theta,A);
    A(pos)=5;
  else
    p=2;
    pos= predictOneVsAll(all_theta,A);
    A(pos)=50;
  endif
    B=[A(1:3);A(4:6);A(7:9)]
  if (wincondition(A)==1)
    break;
  endif
endfor
