# Effect-of-Noise-on-Wireless-Transmission-Channel-
Understand the noise affect in wireless transmission.
# Noise

In communication systems, noise is an error or undesired random disturbance of a useful
information signal. The noise is a summation of unwanted or disturbing energy from
natural and sometimes man-made sources.

Noise is, however, typically distinguished from interference, for example in the signal-tonoise
ratio (SNR), signal-to-interference ratio (SIR) and signal-to-noise plus interference
ratio (SNIR) measures. Noise is also typically distinguished from distortion, which is an
unwanted systematic alteration of the signal waveform by the communication equipment,
for example in signal-to-noise and distortion ratio (SINAD) and total harmonic distortion
plus noise (THD+N) measures. While noise is generally unwanted, it can serve a
useful purpose in some applications, such as random number generation or dither. Noise
generation is generally considered as a random process.

If the noise source is correlated with the signal, such as in the case of quantisation error,
the intentional introduction of additional noise, called dither, can reduce overall noise in
the bandwidth of interest. This technique allows retrieval of signals below the nominal
detection threshold of an instrument. This is an example of stochastic resonance.


# Types of Noise
There are several types of noise depending on the probability distribution of the random
noise parameter. For example,
1. Gaussian Noise
2. Gamma Noise
3. Skewed Gaussian etc.
Depending on the nature and generation phenomenon of noise, it can be classified into
several types,
1. Thermal Noise
2. Shot Noise
3. Flicker Noise
4. Intermodulation Noise
5. Quantization Noise etc.

Our focus will be on the most common type of noise — Gaussian Noise.

# Gaussian Noise
Gaussian noise, named after Carl Friedrich Gauss, is statistical noise having a probability
density function (PDF) equal to that of the normal distribution. In other words, the
values that the noise can take on are Gaussian-distributed. The PDF of Gaussian random
noise is given below.

![alt text](https://latex.codecogs.com/gif.latex?p%28n%29%20%3D%20%5Cfrac%7B1%7D%7B%5Csigma%20_%7Bn%7D%5Csqrt%7B2%5Cpi%20%7D%7Dexp%5Cleft%20%28%20-%5Cfrac%7Bn%5E%7B2%7D%7D%7B2%5Csigma%20_%7Bn%7D%5E%7B2%7D%7D%20%5Cright%20%29)


where, ![](https://latex.codecogs.com/gif.latex?%5Csigma%20_%7Bn%7D%5E%7B2%7D0) = power of the noise.
