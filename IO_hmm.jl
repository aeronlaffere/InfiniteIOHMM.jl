using Distributions, HMMBase, Plots

ns = 1000;
a = mod.(floor.((1:ns) / 50), 2)
y = zeros(size(a))

nnz(y) = sum(y .!= 0)
y[a.==0] = rand(nnz(a.==0), 1) .< 0.3 
y[a.==1] = rand(nnz(a.==1), 1) .< 0.05

plot(y)

# Guessed probability of switching from high firing rate to low firing rate
switch_probability = [0.9 0.1; 0.1 0.9]

# Guessed probability of emitting the symbols (0 = no spike, 1 = spike) in each state:
emission_probability = [0.9 0.1; 0.6 0.4]

