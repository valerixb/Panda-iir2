%-------- input values -------
maxSampleRate = 1e6;     % max Sampling rate, Hz
SampleRate = 100.e3;        % actual Sampling rate, Hz, achieved through a CE pin
FPGA_CLK_MHZ = 125;

notch_f0=5000;     % Hz
notch_bw=500;      % Hz, 3-dB BW

samplePeriod=1./SampleRate;

% matlab version
w0=notch_f0/(SampleRate/2);
bw=notch_bw/(SampleRate/2);
[num_notch_m, den_notch_m]= iirnotch(w0, bw)
IIR_n_matlab=tf(num_notch_m, den_notch_m, samplePeriod);

% DIY version
wn0=notch_f0*2*pi;
% prewarp
wn0=2*SampleRate*tan(wn0/(2*SampleRate));
%Q=notch_f0/notch_bw;
Q=wn0/(2*pi)/notch_bw;
x=2/(samplePeriod*wn0);
al0=1+x^2;
al1=2*(1-x^2);
al2=1+x^2;
be0=1+x/Q+x^2;
be1=2*(1-x^2);
be2=1-x/Q+x^2;

notch_A0=al0/be0;
notch_A1=al1/be0;
notch_A2=al2/be0;
notch_B1=be1/be0;
notch_B2=be2/be0;

diynum=[notch_A0 notch_A1 notch_A2]
diyden=[1 notch_B1 notch_B2]

IIR_n_diy=tf(diynum, diyden, samplePeriod);


% % use sfix 16.14 for both num and den
% A_n_fract=14;
% B_n_fract=14;
% approxnum_n=round(diynum*2^A_n_fract)./2^A_n_fract;
% approxden_n=round(diyden*2^B_n_fract)./2^B_n_fract;
% IIR_n_approx=tf(approxnum_n, approxden_n,samplePeriod);

% plot
figure(4)
bode(IIR_n_matlab);
grid on;
hold on
bode(IIR_n_diy);
%bode(IIR_n_approx);
hold off
legend();

% there is a little discrepancy betwee DIY and matlab, but I don't know
% whether "iirnotch" uses a non-pre-warped bilinear or something else
% anyway, I'm happy with that and I'll use my coeffs

% % print out IIR coefficients in hex
% A0_int=round(notch_A0*2^A_n_fract);
% A1_int=round(notch_A1*2^A_n_fract);
% A2_int=round(notch_A2*2^A_n_fract);
% B1_int=round(notch_B1*2^B_n_fract);
% B2_int=round(notch_B2*2^B_n_fract);
% fprintf("notch_A0=A2=0x%s\n",dec2hex(A0_int,4));
% fprintf("notch_A1=B1=0x%s\n",dec2hex(A1_int,4));
% fprintf("notch_B2=0x%s\n",dec2hex(B2_int,4));





% %-------- print values to be used in pandabox web GUI ---------
% format long eng
% %kP_value_pandaGUI  = hex2dec(num2hex(single(kp)));
% %Gi_value_pandaGUI  = hex2dec(num2hex(single(Gi)));
% %G1D_value_pandaGUI = hex2dec(num2hex(single(G1D)));
% %G2D_value_pandaGUI = hex2dec(num2hex(single(G2D)));
% disp("----------------------------------------------------------");
% disp(sprintf("Prop   gain = %f",kp));
% disp(sprintf("Integr gain = %f",ki));
% disp(sprintf("Deriv  gain = %f",kd));
% disp(sprintf("F_filter    = %f",f_filter));
% disp("----------------------------------------------------------");
% disp(sprintf("Gi  = %g",Gi));
% disp(sprintf("G1D = %g",G1D));
% disp(sprintf("G2D = %g",G2D));
% disp("----------------------------------------------------------");
% %disp(sprintf("kP  value for Panda GUI: %10d",kP_value_pandaGUI));
% %disp(sprintf("Gi  value for Panda GUI: %10d",Gi_value_pandaGUI));
% %disp(sprintf("G1D value for Panda GUI: %10d",G1D_value_pandaGUI));
% %disp(sprintf("G2D value for Panda GUI: %10d",G2D_value_pandaGUI));
% %disp("----------------------------------------------------------");




