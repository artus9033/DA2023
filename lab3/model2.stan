data {
    int N;
    real<lower = 0, upper = 1> thetaIn;
    int<lower = 0, upper = N> y;
}

parameters {
    real<lower = 0, upper = 1> p;
}

model {
    p ~ normal(thetaIn, 0.2);
    y ~ binomial(N, p);
}

generated quantities {
    int<lower = 0, upper = N> y_pred;

    y_pred = binomial_rng(N, p);
}
