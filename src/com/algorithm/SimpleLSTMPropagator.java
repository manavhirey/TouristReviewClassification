package com.algorithm;

import org.jblas.DoubleMatrix;

import java.io.IOException;
import java.util.ArrayList;


public class SimpleLSTMPropagator {

    private ArrayList<AbstractLayer> layers = new ArrayList();

    public SimpleLSTMPropagator(String path, int numLSTMLayers) throws IOException {

        for (int i = 0; i < numLSTMLayers; i++) {
            boolean returnSequence = i == 0;
            layers.add(new LSTMLayer(path, i, returnSequence));
        }
        layers.add(new DenseLayer(path));
    }

    public DoubleMatrix forward_propagate_full(DoubleMatrix X) throws IOException {
        int realSize = X.rows;
        DoubleMatrix intermediateResult = X;
        for (AbstractLayer layer: layers) {
            layer.setRealSize(realSize);
            intermediateResult = layer.forwardStep(intermediateResult);
        }

        return intermediateResult;
    }


}
