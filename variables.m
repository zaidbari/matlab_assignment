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

while(waitforbuttonpress()==0) pause(1) end
%%
