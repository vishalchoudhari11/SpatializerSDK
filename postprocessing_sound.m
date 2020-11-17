%% Reading the output

out = readmatrix("output_male_0.97_20_5_20_2.csv");

%% Extracting L and R Channels

L_idx = 1:2:length(out);
R_idx = 2:2:length(out);

L = out(L_idx);
R = out(R_idx);

%% Writing audio file

audio_mat = [L R];
Fs = 16000;

audiowrite("output_male_0.97_20_5_20_2.wav", audio_mat, Fs);