

% TODO - Replace the [] with channel ID to read data from:
readChannelID = 1764189;
% TODO - Enter the Read API Key between the '' below:
readAPIKey = '4EFU2H1TU2IJS1N0';


%% Read Data %%
data = thingSpeakRead(readChannelID, 'ReadKey', readAPIKey,'Fields',[1,2,3],DateRange=[datetime(2022,6,14,23,59,01),datetime(2022,6,17,23,59,59)]);

mean=mean(data);
med=median(data);
mod=mode(data);
min=min(data);
max=max(data);
sd=std(data);
skewness=(data);

disp('---------------------Vibration Sensor----------------------');
disp(strcat('Mean value of Vibration sensor is:',string(mean(1))));
disp(strcat('Median value of vibration sensor is:',string(med(1))));
disp(strcat('Mode value of vibration sensor is:',string(mod(1))));
disp(strcat('Min value of vibration sensor is:',string(min(1))));
disp(strcat('Max value of vibration sensor is:',string(max(1))));
disp(strcat('Standard Deviation value of vibration sensor is:',string(sd(1))));
disp(strcat('Skewness value of vibration sensor is:',string(skewness(1))));

disp('---------------------Humidity Sensor----------------------');
disp(strcat('Mean value of Humidity sensor is:',string(mean(2))));
disp(strcat('Median value of Humidity sensor is:',string(med(2))));
disp(strcat('Mode value of Humidity sensor is:',string(mod(2))));
disp(strcat('Min value of Humidity sensor is:',string(min(2))));
disp(strcat('Max value of Humidity sensor is:',string(max(2))));
disp(strcat('Standard Deviation value of Humidity sensor is:',string(sd(2))));
disp(strcat('Skewness value of Humidity sensor is:',string(skewness(2))));

disp('---------------------Temperature Sensor----------------------');

disp(strcat('Mean value of Temperature sensor is:',string(mean(3))));
disp(strcat('Median value of Temperature sensor is:',string(med(3))));
disp(strcat('Mode value of Temperature sensor is:',string(mod(3))));
disp(strcat('Min value of Temperature sensor is:',string(min(3))));
disp(strcat('Max value of Temperature sensor is:',string(max(3))));
disp(strcat('Standard Deviation value of Temperature sensor is:',string(sd(3))));
disp(strcat('Skewness value of Temperature sensor is:',string(skewness(3))));


