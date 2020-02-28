%% Pre-processing

Time = out.tout;
T_val = out.ScopeData{1}.Values.Data;
T_noise = out.ScopeData{2}.Values.Data;
Mode = out.ScopeData{3}.Values.Data;
Mode_noise = out.ScopeData{4}.Values.Data;
signals = [Time T_val T_noise Mode Mode_noise];

writematrix(signals,'signals.csv');