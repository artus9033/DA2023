data {
    int N;
    real weight[N];
}

generated quantities {
    real sigma = normal_rng(5,0.5);
    real alpha = normal_rng(175,5); 
    real beta1 = lognormal_rng(0,1);
    real beta2 = normal_rng(0,1);
    real height[N];
    for (i in 1:N){
        height[i] = normal_rng(alpha+beta1*weight[i]+beta2*weight[i]*weight[i],sigma);
    }
}