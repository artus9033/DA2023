data {
    int<lower=0> N;
    vector[N] milesFlown;
}

generated quantities {
    real alpha = normal_rng(2.5, 0.3);
    real theta = normal_rng(-1e-5, 1e-5);

    vector [N] lambda = exp(alpha + theta * milesFlown);

    int<lower=0> y[N];

    for (i in 1 : N) {
        y[i] = poisson_rng(lambda[i]);
    }
}
