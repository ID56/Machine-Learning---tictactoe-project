function [X,y]=game(iter)
%%Generating training data
X=[];
y=[];
for it=1:iter %% number of iterations can be toggled

  index=[1 2 3 4 5 6 7 8 9];
  A=zeros(1,9);
  player1=[];
  player2=[];
  for turn=1:9
      if (mod(turn,2)==1) %%player1
        n=length(index);
        %A
        idx=winningmove(A,10);
        %size(idx)
        if (idx>0)
          'player1 wins'
          
          player1=[player1;A idx];
          X=[X; player1(:,1:end-1)];
          y=[y; player1(:,end)];
          break;
        endif;
        
        m=randperm(n,1);
        player1=[player1; A index(m)]; %%eg: [000000000 3] later seperable into [X y]
        A(index(m))=5;
        index(m)=[];
      else %%player2
        n=length(index);
        %A
        idx=winningmove(A,100);
        %size(idx)
        if (idx>0)
          'player2 wins'
          
          player2=[player2;A idx];
          X=[X; player2(:,1:end-1)];
          y=[y; player2(:,end)];
          break;
        endif;
        
        m=randperm(n,1);
        
        player2=[player2; A index(m)];
        
        A(index(m))=50;
        index(m)=[];
      endif
      
                    %% No win has happened, ie, a draw has taken place
      if (turn==9)  %%taking data from both players in case of a draw
         X=[X; player1(:,1:end-1)];
         y=[y; player1(:,end)];
         X=[X; player2(:,1:end-1)];
         y=[y; player2(:,end)];
      endif;
      
      
  endfor;
 % B=[A(1:3);A(4:6);A(7:9)] %% just to visualize the matches
endfor;

end;