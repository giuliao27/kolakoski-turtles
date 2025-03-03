%--------------------------------------------------------------------------
% File: turtles.m

% Goal: This routine plots the paths walked by a certain number of
% turtles. Each path is the "child" of the previous one.

% Input: k, the Kolakoski sequence;
% p, the correspondent predicted_by;
% height: the number of the turtles that we make walk;
% steps: the numbers of elements of sequence that we want to represent.
% Output: the paths of the turtles.

% Authors: Giulia Orrù
% Date: february 2024
%--------------------------------------------------------------------------

function turtles(k,p,height,steps)

step = 5;
l=0;

S = ones(height,steps)*step;

figure;
hold on

for j = 1:height
    x = 0;
    y = 0;
    for i = 1:steps
        if j ~= 1
            if k(p(i)) ~= 1
                S(j,i) = S(j-1,p(i))/2;
            else
                S(j,i) = S(j-1,p(i));
            end
        end
        oldX = x;
        oldY = y;
        step = S(j,i);
        x = x + step;
        if j == height
            l = l + step;
        end
        if k(i) == 1
            plot([oldX,x],[oldY+j-1,y+j-1],'color','#4DBEEE','LineWidth',5)
            scatter(x,y+j-1,'Marker','|','LineWidth',5, 'MarkerEdgeColor','white')
        else
            plot([oldX,x],[oldY+j-1,y+j-1],'color',"#A2142F",'LineWidth',5)
            scatter(x,y+j-1,'Marker','|','LineWidth',5, 'MarkerEdgeColor','white')
        end
    end
end
legend('1','','2')
xlim([0 l]);