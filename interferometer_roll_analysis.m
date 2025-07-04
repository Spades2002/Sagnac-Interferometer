%% Calculating Phase

IM = 0.3089 + 0.306;
I0 = 0.306;
delta_phase = acos((I - I0)./IM);

%% Calculating Angular Velocity

lambda = 1310e-9;
r = 10e-2;
nf = 1.5;
length = 100;
omega = (lambda*delta_phase*physconst('lightspeed'))/(2*nf*(length)^2);

%% Smoothing the signals

smoothed_signal1 = movmean(I, 1000);
smoothed_angle = movmean(delta_phase, 1000); 
smoothed_signal2 = movmean(omega, 1000);

%% Calculating angle of rotation

roll = cumtrapz(t, smoothed_signal2);

%% Calculating the mean and standard deviationg of the roll angle
mean_angle = mean(roll);

std_deviation_angle = std(roll);

disp(['Mean angle: ', num2str(mean_angle)]);
disp(['Standard Deviation: ', num2str(std_deviation_angle)]);

%% Plotting the graphs

figure;
subplot(4,1,1);
plot (t, smoothed_signal1, 'b', 'LineWidth', 0.5)
grid;
xlabel('Time (s)');
ylabel('Intensity (volts)');
title('Intensity');

subplot(4,1,2);
plot (t, smoothed_angle, 'g', 'LineWidth', 0.5)
grid;
xlabel('Time (s)');
ylabel('Phase angle (rads)');
title('Phase Angle');

subplot(4,1,3);
plot (t, smoothed_signal2, 'r', 'LineWidth', 0.5)
grid;
xlabel('Time (s)');
ylabel('Angular Velocity (rad/s)');
title('Angular Velocity');

subplot(4,1,4);
plot (t, roll, 'k', 'LineWidth', 1.5)
grid;
xlabel('Time (s)');
ylabel('Roll Angle (rad)');
title('Roll Angle');

