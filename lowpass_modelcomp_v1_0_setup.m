%-------- input values -------
maxSampleRate = 1e6;     % max Sampling rate, Hz
SampleRate = 100.e3;     % actual Sampling rate, Hz, achieved through a CE pin
FPGA_CLK_MHZ = 125;

lp_f0=500;      % Hz, 3-dB cutoff frequency
lp_zeta=0.5;

samplePeriod=1./SampleRate;

% DIY version
wn0=lp_f0*2*pi;
% prewarp
wn0=2*SampleRate*tan(wn0/(2*SampleRate));
x=2/(samplePeriod*wn0);
alpha0=1;
alpha1=2;
alpha2=1;
beta0=1+2*x*lp_zeta+x^2;
beta1=2*(1-x^2);
beta2=1-2*x*lp_zeta+x^2;

lp_A0=alpha0/beta0;
lp_A1=alpha1/beta0;
lp_A2=alpha2/beta0;
lp_B1=beta1/beta0;
lp_B2=beta2/beta0;

diynum=[lp_A0 lp_A1 lp_A2]
diyden=[1 lp_B1 lp_B2]

IIR_n_diy=tf(diynum, diyden, samplePeriod);


% % use sfix 16.14 for both num and den
% A_n_fract=14;
% B_n_fract=14;
% approxnum_n=round(diynum*2^A_n_fract)./2^A_n_fract;
% approxden_n=round(diyden*2^B_n_fract)./2^B_n_fract;
% IIR_n_approx=tf(approxnum_n, approxden_n,samplePeriod);


% matlab version
w0=2*pi*lp_f0;
LP_conttime=tf([1], [1/w0^2 2*lp_zeta/w0 1]);



% plot
figure(5)
h=bodeplot(LP_conttime);
setoptions(h,'FreqUnits','Hz');
setoptions(h,'PhaseWrapping','off');
setoptions(h,'PhaseMatching','off');
setoptions(h,'PhaseMatchingFreq',1);
setoptions(h,'PhaseMatchingValue',0);
grid on
hold on
h=bodeplot(IIR_n_diy);
setoptions(h,'FreqUnits','Hz');
setoptions(h,'PhaseWrapping','off');
setoptions(h,'PhaseMatching','off');
setoptions(h,'PhaseMatchingFreq',1);
setoptions(h,'PhaseMatchingValue',0);
grid on
hold off
legend();



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




