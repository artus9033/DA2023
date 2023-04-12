data {
    int N;
    vector[N] weight;
    real heights[N];
}

parameters {
    real alpha;
    real beta1;
    real beta2;
    real<lower=0> sigma;
}

transformed parameters  {
   vector[N] mu = weight .* weight * beta2 + weight * beta1 + alpha;
}

model {
    alpha ~ normal(178,15);
    beta1 ~ lognormal(0,1);
    beta2 ~ normal(0,1);
    sigma ~ normal(5,0.5);
    heights ~ normal(mu, sigma);
}

generated quantities {
    real height[N];

    for (i in 1:N) {
        height[i] = normal_rng(mu[i], sigma);
    }
}