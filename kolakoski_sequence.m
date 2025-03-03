%--------------------------------------------------------------------------
% File: kolakoski_sequence.m

% Goal: This routine generates the first n terms of the Kolakoski sequence
% and for each of them is specified which n generates it.

% Input: n, a natural number > 0
% Output: an array (sequence) with the first n terms of the Kolakoski
% sequence and an array (predicted_by) with the natural numbers that predict
% the n-th term.

% Authors: Giulia Orrù
% Date: february 2024
%--------------------------------------------------------------------------

function [sequence,predicted_by] = kolakoski_sequence(n)

sequence = [1,2,2];

predicted_by = [1,2,2];

for which_run = 3:n
    length_run = sequence(which_run);
    if mod(which_run,2) == 0
        add = ones(1,length_run)*2;
        add_predicted = ones(1,length_run)*which_run;
    else
        add = ones(1,length_run);
        add_predicted = ones(1,length_run)*which_run;
    end
    sequence = [sequence,add];
    predicted_by = [predicted_by, add_predicted];
end

sequence = sequence(1:n);
predicted_by = predicted_by(1:n);


    
