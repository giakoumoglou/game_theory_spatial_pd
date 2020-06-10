% This script is a simulation of Martin A Nowak and Robert M May paper
% about "Evolutionary Games and Spatial Chaos" 1992.
% It is created by n Giakoumoglou, M Demetriou and P Manouselis for a
% presentation in Game Theory course in May 2020.
%
% In this implementation, the spatial PD game is played among 4 orthogonal
% neighbours.
%
% Inputs:
% b                     : Defection payoff
% torus                 : If ~0, define the lattice as a torus, 0 else
% p                     : Proportion of defectors in [0, 1]
% self_interaction      : If 0, self interaction is excluded, if ~0, included
% rounds                : Number of rounds/generation/time step
% n                     : Squared lattice side size
% printLattice          : If 1, prints the lattice over rounds
% printFc               : If 1, prints the frequency of cooperators over
%                         rounds
% limit                 : If >0, prints limit in fc as a horizontal line
%
% Output:
% transition_matrix     : holds the transition of players over rounds
%                         according to the rule: C|C=1, C|D=2, D|C=3, D|D=4
function [] = Spatial_PD_4_NN(b,torus,p,self_interaction,rounds,n,printLattice,printFc)   
nn = n*n;                              % Squared lattice size
R = 1;                                 % Cooperation payoff
S = 0;                                 % Defector Payoff if other cooperates                            
T = b;                                 % Defection payoff
P = 0;                                 % Cooperative Payoff if other defects
payoff_matrix = NaN*zeros(2,2);        % Payoff Matrix (R,S,T,P)
payoff_matrix(1,1) = R;
payoff_matrix(2,1) = T;
payoff_matrix(2,2) = P;
payoff_matrix(1,2) = S;
color_matrix = [                       % Color Matrix for transitions
        0 0 1                          % 1 -> C|C: blue
        0 1 0                          % 2 -> C|D: green
        1 1 0                          % 3 -> D|C: yellow
        1 0 0];                        % 4 -> D|D: red
transitions = [1 2;3 4]';              % Transition defined as above
fc = zeros(rounds,1);                  % Fraction of sites occupied by C
payoff = zeros(n,n);                   % Payoff of each element in lattice after playing with 8 neighbours
new_lattice = zeros(n,n);              % New Lattice after player change or not their strategy
transition_matrix = zeros(n,n,rounds); % Transition of each node for each round
orthogonalNeighbours = [0 0 1 -1;      % Relative distance to the 4 nearest orthogonal neighbours
                        1 -1 0 0];
lattice = ones(n,n);                   % Latter/Grid of the players
lattice2 = rand(n,n);                  % Choose random positions for the
iter = find(lattice2 < p);             % p percentage of the defectors
lattice(iter) = 2;
clear lattice2; clear iter;
tic
for iter=1:rounds    
    % Find payoff of each player of its 4 neighbours
    for i=1:n
        for j=1:n
            temp_payoff = 0;
            if self_interaction == 1
                a = i; b = j;
                temp_payoff = temp_payoff + payoff_matrix(lattice(i,j), lattice(a,b));
            end                
            for neighbour=1:4 %up, down, right, left
                k = orthogonalNeighbours(1,neighbour); % (k,h) = (0,1), (0,-1),
                h = orthogonalNeighbours(2,neighbour); %         (1,0), (-1,0)
                    % Taking account of boundary conditions
                    if (i+k)==0
                        if torus == 0
                            continue;
                        else % torus
                            a = n;
                        end
                    elseif (i+k)==(n+1)
                        if torus == 0
                            continue;
                        else % torus
                            a = 1;
                        end
                    else
                        a = (i+k); % torus
                    end
                    if (j+h)==0
                        if torus == 0
                            continue;
                        else % torus
                            b = n;
                        end
                    elseif (j+h)==(n+1)
                        if torus == 0
                            continue;
                        else % torus
                            b = 1;
                        end
                    else
                        b = (j+h); % torus
                    end
                    temp_payoff = temp_payoff + payoff_matrix(lattice(i,j), lattice(a,b));
            end
            payoff(i,j) = temp_payoff;
        end
    end
    % Check if neighbour performed better; mimic him if he did
    for i=1:n
        for j=1:n
            pay = payoff(i,j);
            new_lattice(i,j) = lattice(i,j);
            for neighbour=1:4
                k = orthogonalNeighbours(1,neighbour);  % (k,h) = (0,1), (0,-1),
                h = orthogonalNeighbours(2,neighbour);  %         (1,0), (-1,0)
                    % Taking account of boundary conditions
                    if (i+k)==0
                        if torus == 0
                            continue;
                        else % torus
                            a = n;
                        end
                    elseif (i+k)==(n+1)
                        if torus == 0
                            continue;
                        else % torus
                            a = 1;
                        end
                    else
                        a = (i+k);
                    end
                    if (j+h)==0
                        if torus == 0
                            continue;
                        else % torus
                            b = n;
                        end
                    elseif (j+h)==(n+1)
                        if torus == 0
                            continue;
                        else % torus
                            b = 1;
                        end
                    else
                        b = (j+h);
                    end
                    if (payoff(a,b) > pay)
                        pay = payoff(a,b);
                        new_lattice(i,j) = lattice(a,b);
                    end
            end
        end
    end
    % Check for strategy transitions C|C, C|D, D|C, D|D 
    for i=1:n
        for j=1:n
            transition_matrix(i,j,iter) = transitions(new_lattice(i,j),lattice(i,j));
            lattice(i,j) = new_lattice(i,j);
        end
    end
    % Proportion of ccoperators
    fc(iter) = length(find(transition_matrix(:,:,iter)==1 | transition_matrix(:,:,iter)==3)) / nn;
    %fc(iter) = length(find(new_lattice(:,:)==1))/nn;
end
toc
if printLattice == 1
    for iter=1:rounds
        pcolor(transition_matrix(:,:,iter));
        colormap(color_matrix)
        title(['Round: ',num2str(iter)])
        F(iter) = getframe; % Recording for a movie
    end
end
if printFc == 1
    figure;
    plot(1:rounds,fc,'-rs');
    xlabel('Round')
    ylabel('Fraction of sites occupied by C denoted by f_c')
    title('SPATIAL PRISONERS DILEMNA');
    grid on;
    hold on; plot([0,rounds],[0.374, 0.374],'k--')
    text(rounds,0.374,num2str(0.374));
end
end