generated quantities {
    int N = 50;
    real thetaIn = 0.2;

    int y;
    real<lower = 0, upper = 1> p;

    p = normal_rng(thetaIn, 0.02);

    y = binomial_rng(N, p);
}
