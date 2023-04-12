data {
    int N;
    real weight[N];
}

generated quantities {
    real alpha = normal_rng(175, 5); 
    real beta = normal_rng(0, 10);

    real sigma = normal_rng(5, 0.5);

    real height[N];

    for (i in 1:N){
        height[i] = normal_rng(alpha + weight[i] * beta, sigma);
    }
}
