package com.algorithm;

public interface IFeatureProbability<T, K> {

    public float featureProbability(T feature, K category);

}