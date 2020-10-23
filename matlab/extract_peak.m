clear all;
clc;
data = dlmread(input('Enter Your Text File:-'));
intensity =data(:,2);
two_theta = data(:,1);
step = two_theta(2) -two_theta(1);
data(:,2)= smoothdata(data(:,2));
answer = 0;
while answer == 0
    peak_height = input('Enter Minimum peak height (default=300):-');
    peak_prominence = input('Enter Minimum peak Prominence (default=10):-');
    findpeaks(data(:,2),data(:,1),'MinPeakHeight',peak_height,'MinPeakProminence',peak_prominence)
    answer = input('Is all peaks are identified? (yes=1/no=0):-');
    close;
    [pks, locs] = findpeaks(data(:,2),data(:,1),'MinPeakHeight',peak_height,'MinPeakProminence',peak_prominence);
    
end

for i = 1:size(locs)
    answer = 0;
    while answer == 0
        [~, index] = ismember(locs(i), data(:,1));
        angle_diff = input('Enter the angle deviation:-');
        array_size = angle_diff/step;
        left_index = round(index-array_size);
        right_index = round(index+array_size);
        peak_intensity = intensity(left_index:right_index);
        peak_intensity = peak_intensity - min(peak_intensity);
        [~,two_theta_0_index] = max(peak_intensity);
        peak_theta = two_theta(left_index:right_index);
        two_theta_0 = peak_theta(two_theta_0_index); 
        peak_theta = peak_theta -two_theta_0;
        peak = [peak_theta peak_intensity ];
        plot(peak(:,1),peak(:,2))
        file_name = strcat('Peak','_',num2str(i),'.','xlsx');
        answer = input('Are you satisfied with plot (yes=1/no=0):-');
        close;
        xlswrite(file_name,peak)
    end
    
end