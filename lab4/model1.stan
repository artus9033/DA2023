data {
    int n; // samples
}

parameters {
    real u; // sampled height
    real<lower=0> o; // std. dev. - measurement error
}

model {
    u ~ normal(175, 10); // prior dist. for u
    o ~ normal(10, 5); // prior dist. for o
    
    for (i in 1:n) {
        // height sampled along with the measurement error
        real height = normal_rng(u, o);
    }
}

generated quantities {
    // height sampled along without the measurement error
    real height_sampled = normal_rng(u, o);
}
