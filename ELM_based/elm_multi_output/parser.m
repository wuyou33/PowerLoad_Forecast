function [ output_args ] = parser( TrainingData_File, TestingData_File , No_of_Output)
%PARSER 이 함수의 요약 설명 위치
%   자세한 설명 위치

%%%%%%%%%%% Load training dataset
train_data=csvread(TrainingData_File);
T=train_data(:,1:No_of_Output)';
P=train_data(:,No_of_Output+1:size(train_data,2))';

train_x=P
train_y=T

clear train_data;                                   %   Release raw training data array

%%%%%%%%%%% Load testing dataset
test_data=csvread(TestingData_File);
TV.T=test_data(:,1:No_of_Output)';
TV.P=test_data(:,No_of_Output+1:size(test_data,2))';

test_x=TV.P
test_y=TV.T

clear test_data;                                    %   Release raw testing data array



save('helm_input_data', 'train_x', 'train_y', 'test_x', 'test_y');


end

