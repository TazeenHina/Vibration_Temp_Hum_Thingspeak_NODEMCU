[data,timestamps,channelInfo]= thingSpeakRead(,'Fields',3,DateRange=[datetime(2022,6,14,23,59,01),datetime(2022,6,15,23,59,52)],ReadKey='');

a=fft(data);

plot(abs(a));
xlabel('Frequency(Hz)')
ylabel('Amplitude')
