
clc;
addpath ('110个cover.wav',...
        'Xmin--512','Xmin--256','Xmin--128','Xmin--064','Xmin--032','Xmin--016','Xmin--008',...
        'Tf--512','Tf--256','Tf--128','Tf--064','Tf--032','Tf--016','Tf--008',...
        '50-Tf-004');
N = 50;
ODG = zeros(1,N);
names = load('stego_names.txt');
names = sort(names);names = names(1:N);

for i=1:N
    str_i = num2str(names(i));
    cover_name = strcat(str_i,'.wav');
    stego_name = strcat(str_i,'-Tf-004.wav');   %每次更改    
    ODG(i) = PQevalAudio(cover_name,stego_name);
end
avg_ODG = mean(ODG)

% for i=1:N
%     str_i = num2str(names(i));
%     cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Xmin-512.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
% end
% Xmin_512_avg_ODG = mean(ODG)
% 
% for i=1:N
%     str_i = num2str(names(i));
%     cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Xmin-256.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
% end
% Xmin_256_avg_ODG = mean(ODG)
% 
% for i=1:N
%     str_i = num2str(names(i));    cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Xmin-128.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
%     %返回平均值
% end
% Xmin_128_avg_ODG = mean(ODG)
% 
% for i=1:N
% %     if i==2 || i==19 || i==20 || i==21 || i==22 || i==23 || i==24 || i==31
% %         continue;
% %     end
%     str_i = num2str(names(i));    cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Xmin-064.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
%     %返回平均值
% end
% Xmin_064_avg_ODG = mean(ODG)
% 
% for i=1:N
% %     if i==2 || i==19 || i==20 || i==21 || i==22 || i==23 || i==24 || i==31
% %         continue;
% %     end
%     str_i = num2str(names(i));    cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Xmin-032.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
%     %返回平均值
% end
% Xmin_032_avg_ODG = mean(ODG)
% 
% for i=1:N
%     str_i = num2str(names(i));
%     cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Xmin-016.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
% end
% Xmin_016_avg_ODG = mean(ODG)
% 
% for i=1:N
%     str_i = num2str(names(i));
%     cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Xmin-008.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
% end
% Xmin_008_avg_ODG = mean(ODG)
% 
% for i=1:N
%     str_i = num2str(names(i));    cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Tf-512.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
%     %返回平均值
% end
% Tf_512_avg_ODG = mean(ODG)
% 
% for i=1:N    
%     str_i = num2str(names(i));    cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Tf-256.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
%     %返回平均值
% end
% Tf_256_avg_ODG = mean(ODG)
% 
% for i=1:N    
%     str_i = num2str(names(i));    cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Tf-128.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
%     %返回平均值
% end
% Tf_128_avg_ODG = mean(ODG)
% 
% for i=1:N    
%     str_i = num2str(names(i));    cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Tf-064.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
%     %返回平均值
% end
% Tf_064_avg_ODG = mean(ODG)
% 
% for i=1:N    
%     str_i = num2str(names(i));    cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Tf-032.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
% end
% Tf_032_avg_ODG = mean(ODG)
% 
% for i=1:N    
%     str_i = num2str(names(i));    cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Tf-016.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
% end
% Tf_016_avg_ODG = mean(ODG)
% 
% for i=1:N    
%     str_i = num2str(names(i));    cover_name = strcat(str_i,'.wav');
%     stego_name = strcat(str_i,'-Tf-008.wav');   %每次更改
%     ODG(i) = PQevalAudio(cover_name,stego_name);
% end
% Tf_008_avg_ODG = mean(ODG)
% 
% % save data
