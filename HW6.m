%HW6

% Problem 1. Curve fitting. 
% Part 1. Take 10 x values on the interval 0 < x <= 10 and then create y
% values from the x values by plugging the x values into a third order
% polynomial of your choice. Add random noise to the data by choosing a random number
% in the interval [-D, D]. Start with D = 1. Plot your data in the x-y plane.

xdata = randi([1 9],10,1);
xx = sort(xdata);
yy = xx.^3 +xx.^2 +xx + (-1 + (1-(-1))*rand(1,1));
figure; plot(xx,yy, 'r-')

% Part 2. Fit your data with polynomials from order 1 to 9. Plot the fitted
% polynomials together with the data.

fit1 = fit(xx, yy, 'poly1'); plot(fit1, xx,yy)
set(gca,'FontSize',24);
fit2 = fit(xx, yy, 'poly2'); plot(fit2, xx,yy)
set(gca,'FontSize',24);
fit3 = fit(xx, yy, 'poly3'); plot(fit3, xx,yy)
set(gca,'FontSize',24);
fit4 = fit(xx, yy, 'poly4'); plot(fit4, xx,yy)
set(gca,'FontSize',24);
fit5 = fit(xx, yy, 'poly5'); plot(fit5, xx,yy)
set(gca,'FontSize',24);
fit6 = fit(xx, yy, 'poly6'); plot(fit6, xx,yy)
set(gca,'FontSize',24);
fit7 = fit(xx, yy, 'poly7'); plot(fit7, xx,yy)
set(gca,'FontSize',24);
fit8 = fit(xx, yy, 'poly8'); plot(fit8, xx,yy)
set(gca,'FontSize',24);
fit9 = fit(xx, yy, 'poly9'); plot(fit9, xx,yy)
set(gca,'FontSize',24);

% Part 3. On a separate plot, plot the R^2 and adjusted R^2 as a function
% of the order of the polynomial. 

[fit_out1, fit_metric1] = fit(xx,yy, fit1);
[fit_out2, fit_metric2] = fit(xx,yy, fit2);
[fit_out3, fit_metric3] = fit(xx,yy, fit3);
[fit_out4, fit_metric4] = fit(xx,yy, fit4);
[fit_out5, fit_metric5] = fit(xx,yy, fit5);
[fit_out6, fit_metric6] = fit(xx,yy, fit6);
[fit_out7, fit_metric7] = fit(xx,yy, fit7);
[fit_out8, fit_metric8] = fit(xx,yy, fit8);
[fit_out9, fit_metric9] = fit(xx,yy, fit9);

rsquare = [fit_metric1.rsquare, fit_metric2.rsquare, fit_metric3.rsquare, fit_metric4.rsquare, fit_metric5.rsquare, fit_metric6.rsquare, fit_metric7.rsquare, fit_metric8.rsquare, fit_metric9.rsquare];
adjustedrsquare = [fit_metric1.adjrsquare, fit_metric2.adjrsquare, fit_metric3.adjrsquare, fit_metric4.adjrsquare, fit_metric5.adjrsquare, fit_metric6.adjrsquare, fit_metric7.adjrsquare, fit_metric8.adjrsquare, fit_metric9.adjrsquare];
polynomial= [1,2,3,4,5,6,7,8,9];
plot(polynomial, rsquare, polynomial, adjustedrsquare);

% Part 4. Repeat parts 1 - 3 for D = 10 and D = 1000. Comment on the
% results. 

%D = 10
xdata = randi([1 9],10,1);
xx = sort(xdata);
yy = xx.^3 +xx.^2 +xx + (-10 + (10-(-10))*rand(1,1));
figure; plot(xx,yy, 'r-')

fit1 = fit(xx, yy, 'poly1'); plot(fit1, xx,yy)
set(gca,'FontSize',24);
fit2 = fit(xx, yy, 'poly2'); plot(fit2, xx,yy)
set(gca,'FontSize',24);
fit3 = fit(xx, yy, 'poly3'); plot(fit3, xx,yy)
set(gca,'FontSize',24);
fit4 = fit(xx, yy, 'poly4'); plot(fit4, xx,yy)
set(gca,'FontSize',24);
fit5 = fit(xx, yy, 'poly5'); plot(fit5, xx,yy)
set(gca,'FontSize',24);
fit6 = fit(xx, yy, 'poly6'); plot(fit6, xx,yy)
set(gca,'FontSize',24);
fit7 = fit(xx, yy, 'poly7'); plot(fit7, xx,yy)
set(gca,'FontSize',24);
fit8 = fit(xx, yy, 'poly8'); plot(fit8, xx,yy)
set(gca,'FontSize',24);
fit9 = fit(xx, yy, 'poly9'); plot(fit9, xx,yy)
set(gca,'FontSize',24);

[fit_out1, fit_metric1] = fit(xx,yy, fit1);
[fit_out2, fit_metric2] = fit(xx,yy, fit2);
[fit_out3, fit_metric3] = fit(xx,yy, fit3);
[fit_out4, fit_metric4] = fit(xx,yy, fit4);
[fit_out5, fit_metric5] = fit(xx,yy, fit5);
[fit_out6, fit_metric6] = fit(xx,yy, fit6);
[fit_out7, fit_metric7] = fit(xx,yy, fit7);
[fit_out8, fit_metric8] = fit(xx,yy, fit8);
[fit_out9, fit_metric9] = fit(xx,yy, fit9);

rsquare = [fit_metric1.rsquare, fit_metric2.rsquare, fit_metric3.rsquare, fit_metric4.rsquare, fit_metric5.rsquare, fit_metric6.rsquare, fit_metric7.rsquare, fit_metric8.rsquare, fit_metric9.rsquare];
adjustedrsquare = [fit_metric1.adjrsquare, fit_metric2.adjrsquare, fit_metric3.adjrsquare, fit_metric4.adjrsquare, fit_metric5.adjrsquare, fit_metric6.adjrsquare, fit_metric7.adjrsquare, fit_metric8.adjrsquare, fit_metric9.adjrsquare];
polynomial= [1,2,3,4,5,6,7,8,9];
plot(polynomial, rsquare, polynomial, adjustedrsquare);

%D = 1000
xdata = randi([1 9],10,1);
xx = sort(xdata);
yy = xx.^3 +xx.^2 +xx + (-1000 + (1000-(-1000))*rand(1,1));
figure; plot(xx,yy, 'r-')

fit1 = fit(xx, yy, 'poly1'); plot(fit1, xx,yy)
set(gca,'FontSize',24);
fit2 = fit(xx, yy, 'poly2'); plot(fit2, xx,yy)
set(gca,'FontSize',24);
fit3 = fit(xx, yy, 'poly3'); plot(fit3, xx,yy)
set(gca,'FontSize',24);
fit4 = fit(xx, yy, 'poly4'); plot(fit4, xx,yy)
set(gca,'FontSize',24);
fit5 = fit(xx, yy, 'poly5'); plot(fit5, xx,yy)
set(gca,'FontSize',24);
fit6 = fit(xx, yy, 'poly6'); plot(fit6, xx,yy)
set(gca,'FontSize',24);
fit7 = fit(xx, yy, 'poly7'); plot(fit7, xx,yy)
set(gca,'FontSize',24);
fit8 = fit(xx, yy, 'poly8'); plot(fit8, xx,yy)
set(gca,'FontSize',24);
fit9 = fit(xx, yy, 'poly9'); plot(fit9, xx,yy)
set(gca,'FontSize',24);

[fit_out1, fit_metric1] = fit(xx,yy, fit1);
[fit_out2, fit_metric2] = fit(xx,yy, fit2);
[fit_out3, fit_metric3] = fit(xx,yy, fit3);
[fit_out4, fit_metric4] = fit(xx,yy, fit4);
[fit_out5, fit_metric5] = fit(xx,yy, fit5);
[fit_out6, fit_metric6] = fit(xx,yy, fit6);
[fit_out7, fit_metric7] = fit(xx,yy, fit7);
[fit_out8, fit_metric8] = fit(xx,yy, fit8);
[fit_out9, fit_metric9] = fit(xx,yy, fit9);

rsquare = [fit_metric1.rsquare, fit_metric2.rsquare, fit_metric3.rsquare, fit_metric4.rsquare, fit_metric5.rsquare, fit_metric6.rsquare, fit_metric7.rsquare, fit_metric8.rsquare, fit_metric9.rsquare];
adjustedrsquare = [fit_metric1.adjrsquare, fit_metric2.adjrsquare, fit_metric3.adjrsquare, fit_metric4.adjrsquare, fit_metric5.adjrsquare, fit_metric6.adjrsquare, fit_metric7.adjrsquare, fit_metric8.adjrsquare, fit_metric9.adjrsquare];
polynomial= [1,2,3,4,5,6,7,8,9];
plot(polynomial, rsquare, polynomial, adjustedrsquare);

% The smaller the interval, the closer the values of R and R^2. As its increased, R and R^2 diverge and need higher polynomial degrees to cross.

% Part 5. Now repeat parts 1-3 but take 100 x values on the interval 0 < x <=
% 10. Comment on the results. 

%D = 1
xdata = randi([1 9],100,1);
xx = sort(xdata);
yy = xx.^3 +xx.^2 +xx + (-1 + (1-(-1))*rand(1,1));
figure; plot(xx,yy, 'r-')

fit1 = fit(xx, yy, 'poly1'); plot(fit1, xx,yy)
set(gca,'FontSize',24);
fit2 = fit(xx, yy, 'poly2'); plot(fit2, xx,yy)
set(gca,'FontSize',24);
fit3 = fit(xx, yy, 'poly3'); plot(fit3, xx,yy)
set(gca,'FontSize',24);
fit4 = fit(xx, yy, 'poly4'); plot(fit4, xx,yy)
set(gca,'FontSize',24);
fit5 = fit(xx, yy, 'poly5'); plot(fit5, xx,yy)
set(gca,'FontSize',24);
fit6 = fit(xx, yy, 'poly6'); plot(fit6, xx,yy)
set(gca,'FontSize',24);
fit7 = fit(xx, yy, 'poly7'); plot(fit7, xx,yy)
set(gca,'FontSize',24);
fit8 = fit(xx, yy, 'poly8'); plot(fit8, xx,yy)
set(gca,'FontSize',24);
fit9 = fit(xx, yy, 'poly9'); plot(fit9, xx,yy)
set(gca,'FontSize',24);

[fit_out1, fit_metric1] = fit(xx,yy, fit1);
[fit_out2, fit_metric2] = fit(xx,yy, fit2);
[fit_out3, fit_metric3] = fit(xx,yy, fit3);
[fit_out4, fit_metric4] = fit(xx,yy, fit4);
[fit_out5, fit_metric5] = fit(xx,yy, fit5);
[fit_out6, fit_metric6] = fit(xx,yy, fit6);
[fit_out7, fit_metric7] = fit(xx,yy, fit7);
[fit_out8, fit_metric8] = fit(xx,yy, fit8);
[fit_out9, fit_metric9] = fit(xx,yy, fit9);

rsquare = [fit_metric1.rsquare, fit_metric2.rsquare, fit_metric3.rsquare, fit_metric4.rsquare, fit_metric5.rsquare, fit_metric6.rsquare, fit_metric7.rsquare, fit_metric8.rsquare, fit_metric9.rsquare];
adjustedrsquare = [fit_metric1.adjrsquare, fit_metric2.adjrsquare, fit_metric3.adjrsquare, fit_metric4.adjrsquare, fit_metric5.adjrsquare, fit_metric6.adjrsquare, fit_metric7.adjrsquare, fit_metric8.adjrsquare, fit_metric9.adjrsquare];
polynomial= [1,2,3,4,5,6,7,8,9];
plot(polynomial, rsquare, polynomial, adjustedrsquare);

%D = 10

xdata = randi([1 9],100,1);
xx = sort(xdata);
yy = xx.^3 +xx.^2 +xx + (-10 + (10-(-10))*rand(1,1));
figure; plot(xx,yy, 'r-')

fit1 = fit(xx, yy, 'poly1'); plot(fit1, xx,yy)
set(gca,'FontSize',24);
fit2 = fit(xx, yy, 'poly2'); plot(fit2, xx,yy)
set(gca,'FontSize',24);
fit3 = fit(xx, yy, 'poly3'); plot(fit3, xx,yy)
set(gca,'FontSize',24);
fit4 = fit(xx, yy, 'poly4'); plot(fit4, xx,yy)
set(gca,'FontSize',24);
fit5 = fit(xx, yy, 'poly5'); plot(fit5, xx,yy)
set(gca,'FontSize',24);
fit6 = fit(xx, yy, 'poly6'); plot(fit6, xx,yy)
set(gca,'FontSize',24);
fit7 = fit(xx, yy, 'poly7'); plot(fit7, xx,yy)
set(gca,'FontSize',24);
fit8 = fit(xx, yy, 'poly8'); plot(fit8, xx,yy)
set(gca,'FontSize',24);
fit9 = fit(xx, yy, 'poly9'); plot(fit9, xx,yy)
set(gca,'FontSize',24);

[fit_out1, fit_metric1] = fit(xx,yy, fit1);
[fit_out2, fit_metric2] = fit(xx,yy, fit2);
[fit_out3, fit_metric3] = fit(xx,yy, fit3);
[fit_out4, fit_metric4] = fit(xx,yy, fit4);
[fit_out5, fit_metric5] = fit(xx,yy, fit5);
[fit_out6, fit_metric6] = fit(xx,yy, fit6);
[fit_out7, fit_metric7] = fit(xx,yy, fit7);
[fit_out8, fit_metric8] = fit(xx,yy, fit8);
[fit_out9, fit_metric9] = fit(xx,yy, fit9);

rsquare = [fit_metric1.rsquare, fit_metric2.rsquare, fit_metric3.rsquare, fit_metric4.rsquare, fit_metric5.rsquare, fit_metric6.rsquare, fit_metric7.rsquare, fit_metric8.rsquare, fit_metric9.rsquare];
adjustedrsquare = [fit_metric1.adjrsquare, fit_metric2.adjrsquare, fit_metric3.adjrsquare, fit_metric4.adjrsquare, fit_metric5.adjrsquare, fit_metric6.adjrsquare, fit_metric7.adjrsquare, fit_metric8.adjrsquare, fit_metric9.adjrsquare];
polynomial= [1,2,3,4,5,6,7,8,9];
plot(polynomial, rsquare, polynomial, adjustedrsquare);

%D = 1000

xdata = randi([1 9],100,1);
xx = sort(xdata);
yy = xx.^3 +xx.^2 +xx + (-1000 + (1000-(-1000))*rand(1,1));
figure; plot(xx,yy, 'r-')

fit1 = fit(xx, yy, 'poly1'); plot(fit1, xx,yy)
set(gca,'FontSize',24);
fit2 = fit(xx, yy, 'poly2'); plot(fit2, xx,yy)
set(gca,'FontSize',24);
fit3 = fit(xx, yy, 'poly3'); plot(fit3, xx,yy)
set(gca,'FontSize',24);
fit4 = fit(xx, yy, 'poly4'); plot(fit4, xx,yy)
set(gca,'FontSize',24);
fit5 = fit(xx, yy, 'poly5'); plot(fit5, xx,yy)
set(gca,'FontSize',24);
fit6 = fit(xx, yy, 'poly6'); plot(fit6, xx,yy)
set(gca,'FontSize',24);
fit7 = fit(xx, yy, 'poly7'); plot(fit7, xx,yy)
set(gca,'FontSize',24);
fit8 = fit(xx, yy, 'poly8'); plot(fit8, xx,yy)
set(gca,'FontSize',24);
fit9 = fit(xx, yy, 'poly9'); plot(fit9, xx,yy)
set(gca,'FontSize',24);

[fit_out1, fit_metric1] = fit(xx,yy, fit1);
[fit_out2, fit_metric2] = fit(xx,yy, fit2);
[fit_out3, fit_metric3] = fit(xx,yy, fit3);
[fit_out4, fit_metric4] = fit(xx,yy, fit4);
[fit_out5, fit_metric5] = fit(xx,yy, fit5);
[fit_out6, fit_metric6] = fit(xx,yy, fit6);
[fit_out7, fit_metric7] = fit(xx,yy, fit7);
[fit_out8, fit_metric8] = fit(xx,yy, fit8);
[fit_out9, fit_metric9] = fit(xx,yy, fit9);

rsquare = [fit_metric1.rsquare, fit_metric2.rsquare, fit_metric3.rsquare, fit_metric4.rsquare, fit_metric5.rsquare, fit_metric6.rsquare, fit_metric7.rsquare, fit_metric8.rsquare, fit_metric9.rsquare];
adjustedrsquare = [fit_metric1.adjrsquare, fit_metric2.adjrsquare, fit_metric3.adjrsquare, fit_metric4.adjrsquare, fit_metric5.adjrsquare, fit_metric6.adjrsquare, fit_metric7.adjrsquare, fit_metric8.adjrsquare, fit_metric9.adjrsquare];
polynomial= [1,2,3,4,5,6,7,8,9];
plot(polynomial, rsquare, polynomial, adjustedrsquare);

% Problem 2. Basic statistics. 
% Part 1. Consider two different distributions - Gaussian numbers with a mean of
% 0 and variance 1 and Gaussian numbers with a mean of 1 and variance 1.
% (1) Make a plot of the average p-value for the t-test comparing N random
% numbers chosen from each of these two distributions as a function of N.

random = randn(10); %first distribution
random = sort(random);
random1 = random(:) - mean(random(:));
random1_normalized = reshape(random1/std(random1),size(random));

mean1 = 1; std1 = 1; %second distribution
random = randn(10);
random2 = random(:) - mean(random(:));
s = random2/std(random2)*std1;
random2_normalized = reshape(s + mean1,size(random));

N = 10;
for i = 1:N
    randindex = randperm(i);
    gauss1 = random1_normalized(randindex);
    randindex1 = randperm(i);
    gauss2 = random2_normalized(randindex1);
    [is_sig(i), pval(i)] = ttest2(gauss1,gauss2);
end
plot(1:N,pval);

% Part 2. Now keep the first distribution the same, but vary the mean of
% the second distribution between 0 and 10 with the same variance and
% repeat part one. Make a plot of all of these different curves on the same
% set of axes. What is special about the case where the mean of the second
% distribution is 0? 

for i=0:10 %Gaussian numbers for second distribution
    mean1 = i; std1 = 1;
    random = randn(10);
    random = sort(random);
    random2 = random(:) - mean(random(:));
    s = random2/std(random2)*std1;
    random2_normalized = reshape(s + mean1,size(random));
    [mean(random2_normalized(:)),std(random2_normalized(:))]
end
plot(1:N,pval);

% When the mean of the second distribution is 0, the plot slopes down and
% then tapers off.

% Part 3. Now keep the means of the two distributions at 0 and 1 as in part
% 1, but vary the variance of both distributions simultaneiously between 0.1 and 10 and plot the 
% p-values vs the number of numbers drawn as before. Comment on your results.  

for i=0.1:0.1:10

    mean1 = 0;  std1 = i; %first distribution
    random = randn(10);
    random = sort(random);
    random1 = random(:) - mean(random(:));
    s = random1/std(random1)*std1;
    random1_norm = reshape(s + mean1,size(random));

    mean2 = 1; std2 = i; %second distribution
    random = randn(10);
    random2 = random(:) - mean(random(:));
    s = random2/std(random2)*std2;
    random2_normalized = reshape(s + mean2,size(random));
    
    for j=0:10
        mean1 = j; std1 = 1;
        random = randn(10);
        random2 = random(:) - mean(random(:));
        s = random2/std(random2)*std1;
        random_normalized = reshape(s + mean1,size(random));
    end
end
plot(1:N,pval);


