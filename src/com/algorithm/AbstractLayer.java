package com.algorithm;

import org.jblas.DoubleMatrix;


public interface AbstractLayer {

    public DoubleMatrix forwardStep(DoubleMatrix X);

    public void setRealSize(int realSize);



}
