[data,timestamps,channelInfo]= thingSpeakRead(1764189,'Fields',1,DateRange=[datetime(2022,6,14,23,59,01),datetime(2022,6,17,23,59,52)],ReadKey='4EFU2H1TU2IJS1N0');

a=fft(data);

plot(abs(a));
xlabel('Frequency(Hz)')
ylabel('Amplitude')