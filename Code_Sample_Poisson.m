%%%%%POISSON REGRESSION CODE%%%%%
% Sample size: 50
for i = 1:1000
    X5Po = rand(50,1);
    mu5Po = exp(1 + X5Po);
    Y5Po = binornd(10, mu5Po/10);
    pois5 = fitglm(X5Po, Y5Po, 'Distribution', 'poisson');
    pois5coef(i) = pois5.Coefficients.Estimate(2);
    pois5int(i) = pois5.Coefficients.Estimate(1);
end
pois5_meancoef = mean(pois5coef);
pois5_varcoef = var(pois5coef);
pois5_meanint = mean(pois5int);
pois5_varint = var(pois5int);

% Sample size: 100
for i = 1:1000
    X10Po = rand(100,1);
    mu10Po = exp(1 + X10Po);
    Y10Po = binornd(10, mu10Po/10);
    pois10 = fitglm(X10Po, Y10Po, 'Distribution', 'poisson');
    pois10coef(i) = pois10.Coefficients.Estimate(2);
    pois10int(i) = pois10.Coefficients.Estimate(1);
end
pois10_meancoef = mean(pois10coef);
pois10_varcoef = var(pois10coef);
pois10_meanint = mean(pois10int);
pois10_varint = var(pois10int);

% Sample size: 200
for i = 1:1000
    X20Po = rand(200,1);
    mu20Po = exp(1 + X20Po);
    Y20Po = binornd(10, mu20Po/10);
    pois20 = fitglm(X20Po, Y20Po, 'Distribution', 'poisson');
    pois20coef(i) = pois20.Coefficients.Estimate(2);
    pois20int(i) = pois20.Coefficients.Estimate(1);
end
pois20_meancoef = mean(pois20coef);
pois20_varcoef = var(pois20coef);
pois20_meanint = mean(pois20int);
pois20_varint = var(pois20int);
