%% Question 2(a): roots: -3, 3, -7; plot: −15 ≤ 𝑥 ≤ 20
given_polynomial = [24 0 0 1 18 0];
given_roots = [-3, 3, -7];
polynomial_limit = -15:0.01:20;

obtained_polynomial = poly(given_roots)
plot(polynomial_limit, polyval(obtained_polynomial, polynomial_limit)),xlabel('x'),ylabel('y')

%% Question 2(b): p(𝑥)/d(𝑥)
[quotient, remainder] = deconv(given_polynomial, obtained_polynomial)


%% Question 4(a): vector containing all +ive numbers in the given matrix
given_matrix = [-10, -11, 3; 9.1, 8, pi; -5, 4, -0.12];
positive_vector = given_matrix(given_matrix > 0)'


%% Question 4(b): Find the total of the largest numbers in each row
sum_of_largest_in_row = sum(max(given_matrix, [], 2)) % 2 here means check inside rows instead of columns

%% Question 4(c): 2x3 matrix from first & last row
new_2x3_matrix = [given_matrix(1,:); given_matrix(end,:)]

%% Question 6: calculate pressure and temprature
altitude_limit = 200:input("Input range step in ft: "):8000;

[ pressure, temprature ] = pressure_and_temprature(altitude_limit)
plot(altitude_limit, temprature),xlabel('Altitude (h)'),ylabel('Temprature (t)')


%% Question 8: calculate cost of call
time_of_call = input('Time of your call (day: 8AM - 6PM, evening: 6PM - 12AM, night: 12AM - 8AM): ', 's');
duration = input('Duration of your call: ');

total_cost = cost_of_call(time_of_call, duration)


%% Question 10:

% Create structure array with 3 engineers
eng(1).name = 'Zaid';
eng(1).area = 'Software';
eng(1).experience = [2018 1; 2019 2; 2021 1; 2022 2];

eng(2).name = 'Bari';
eng(2).area = 'IT';
eng(2).experience = [2018 3; 2019 1; 2021 2; 2022 1];

eng(3).name = 'Ali';
eng(3).area = 'Civil';
eng(3).experience = [2018 2; 2019 3; 2021 1; 2022 2];

% Show last engineers name
last_engineer_name = eng(3).name

experience_before_change = eng(3).experience

% change number of projects
new_number_of_projects = eng(3).experience(4,2) * 2;
eng(3).experience(4,2) = new_number_of_projects;

experience_after_change = eng(3).experience

% added for octave UBUNTU support
% pkg load io

% Read data from excel and update structure
eng(1).experience = xlsread('eng_data.xlsx', 'data', 'A2:B5');
eng(2).experience = xlsread('eng_data.xlsx', 'data', 'D2:E5');
eng(3).experience = xlsread('eng_data.xlsx', 'data', 'G2:H5');


% Display the structure as table
struct2table(eng)

% while(waitforbuttonpress()==0) pause(1) end
%%
