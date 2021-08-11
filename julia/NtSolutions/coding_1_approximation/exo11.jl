cR = sort(abs.(fL)[:])[end : -1 : 1]
err_ldct = collect(max(e, 1e-10) for e in (norm(f, 2)^2 .- cumsum(cR.^2)))

plot(log10.(err_fft./norm(f)^2), linewidth = 2, color = "red", label = "Fourier")
plot(log10.(err_wav./norm(f)^2), linewidth = 2, color = "blue", label = "Wavelets")
plot(log10.(err_dct./norm(f)^2), linewidth = 2, color = "purple", label = "DCT")
plot(log10.(err_ldct./norm(f)^2), linewidth = 2, color = "orange", label = "Local DCT")

title(L"$\log_{10}(\epsilon^2[M]/ ||f||^2)$")
xlim(1, n^2/50)
ylim(-2.35, 0)
legend()

show()
