clear;
clc;
data_file = 'Al6Mg6.dat';
%data_file = input('Enter Your Text File:-');
data = readmatrix(data_file);
intensity =data(:,2);
two_theta = data(:,1);
plot(two_theta,intensity);drawnow;
step = two_theta(2) -two_theta(1);
data(:,2)= smoothdata(data(:,2));
answer = 0;
while answer == 0
    peak_height = input('Enter Minimum peak height (default=300):-');
    peak_prominence = input('Enter Minimum peak Prominence (default=10):-');
    findpeaks(data(:,2),data(:,1),'MinPeakHeight',peak_height,'MinPeakProminence',peak_prominence)
    drawnow
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
        plot(peak_theta,peak_intensity); drawnow
        K_0 = (2*sin(deg2rad(two_theta_0/2)))/0.15496; % Unit is 1/nm
        K = (2*sin(deg2rad(peak_theta/2)))/0.15496; % Unit is 1/nm
        K_minus_K_0 = K - K_0;
        Instrumental_profile = [K_minus_K_0 peak_intensity];
        % plot(Instrumental_profile(:,1),Instrumental_profile(:,2));drawnow;
        file_name = strcat(num2str(locs(i)),'.txt');
        % file_name = strcat('Peak','_',num2str(i),'.','xlsx');
        answer = input('Are you satisfied with plot (yes=1/no=0):-');
        close;
        writematrix(Instrumental_profile,file_name)
        movefile(file_name, num2str(locs(i))); % Removing *.txt extension from instrumental file
        % xlswrite(file_name,Instrumental_profile)
    end
    
end

%% Write index of the peaks;

Index_matrix(:,1) = locs; 
Index_matrix(:,2) = round(pks,2) ; 
stem(Index_matrix(:,1),Index_matrix(:,2),"filled")
FCC = [111;200;220;311;222;400;331;420;422;333];
BCC = [110;200;211;220;310;222;321;400;330;420;332;422;431;5211];
Index_matrix(:,3) = FCC(1:length(Index_matrix));
Index_matrix(:,4) = zeros(size(FCC(1:length(Index_matrix))));
writematrix(Index_matrix,strcat(data_file,'.peak-index.dat'),Delimiter=" ")

