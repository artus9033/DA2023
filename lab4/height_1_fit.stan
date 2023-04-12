data {
   int<lower=0> N;
   real heights[N];
}

parameters {
   real<lower=0, upper=300> mu;
   real<lower=0, upper=20> sigma;
}

model {
   mu ~ normal(175, 5);
   sigma ~ normal(5, 0.5);
   heights ~ normal(mu, sigma);
}

generated quantities {
   real height = normal_rng(mu, sigma);
}
