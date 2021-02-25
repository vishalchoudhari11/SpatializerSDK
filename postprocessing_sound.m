%% Reading the output

readpath = "FromCPP/";
filename = "Trial_1_Conv2";
out = readmatrix(strcat(readpath, filename, ".csv"));
Fs = 24000;

%% Extracting L and R Channels

% Normalising 

out = out/max(abs(out));

L_idx = 1:2:length(out);
R_idx = 2:2:length(out);

L = out(L_idx);
R = out(R_idx);

%% Writing audio file

writepath = "Spatialized/";

audio_mat = [L R];

audiowrite(strcat(writepath, filename, ".wav"), audio_mat, Fs);