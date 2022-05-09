package com.algorithm;

import java.util.Properties;

import org.ejml.simple.SimpleMatrix;

import edu.stanford.nlp.ling.CoreAnnotations;
import edu.stanford.nlp.pipeline.Annotation;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;

import edu.stanford.nlp.sentiment.SentimentCoreAnnotations;
import edu.stanford.nlp.trees.Tree;
import edu.stanford.nlp.util.CoreMap;

public class LSTMRNN {
static StanfordCoreNLP pipeline;

public static void init() {
    Properties props = new Properties();
    props.setProperty("annotators", "tokenize, ssplit, parse, sentiment");
    pipeline = new StanfordCoreNLP(props);
    System.out.println("Properties added");
}

	public static int findSentiment(String tweet) {

    int mainSentiment = 0;
    if (tweet != null && tweet.length() > 0) {
        int longest = 0;
        Annotation annotation = pipeline.process(tweet);
        for (CoreMap sentence : annotation.get(CoreAnnotations.SentencesAnnotation.class)) {
            Tree tree = sentence.get(SentimentCoreAnnotations.SentimentAnnotatedTree.class);
            int sentiment = edu.stanford.nlp.neural.rnn.RNNCoreAnnotations.getPredictedClass(tree);
            System.out.println("Sentiment="+sentiment);
           // System.out.println();
            SimpleMatrix sentiment_new = edu.stanford.nlp.neural.rnn.RNNCoreAnnotations.getPredictions(tree);             
            String partText = sentence.toString();
            //System.out.println("partText="+partText);
            if (partText.length() > longest) {
                mainSentiment = sentiment;
                longest = partText.length();
            }
        }
    }
    
    return mainSentiment;
    }	
	
	
	
}