using Printf
figure(figsize = (10, 7))

beta_list = range(0, 1, step=6)
index = 1

for i in 1 : length(beta_list)
        global index
        beta_c = beta_list[i]
        imageplot(phi(f, beta_c)[:, :], @sprintf("Beta = %.1f", beta_c), [2, 3, i])
        index += 1
end
