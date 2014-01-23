#!/usr/bin/env python3

import sys
import argparse
from argparse import Namespace
import pickle
import random

import nltk

import searches
import preprocess

TESTSET="testdata/defensoria1-3_es.txt"

def test_on_testset(cfd):
    totalcorrect = 0
    totalwords = 0
    with open(TESTSET) as infile:
        for line in infile:
            ## preprocess that line

            ## run classifiers over all the words...

            ## hrm, how do we handle alignments in this case?

            print(line)
            #tagged = searches.maxent_mfs(ss, cfd)
            #print("ORIGINAL:", list(zip(ss,ts)))
            #print("TAGGED:", tagged)
            #predicted = [t for (s,t) in tagged]
            #correct = 0
            #print(list(zip(ts, predicted)))
            #for actual, pred in zip(ts, predicted):
            #    if actual == UNTRANSLATED: continue
            #    totalwords += 1
            #    if actual == pred:
            #        correct += 1
            #        totalcorrect += 1
            #print("sentence accuracy:", correct / len(ss))
            #print("considered words:", len(ss))
    #accuracy = (totalcorrect / totalwords)
    #print("accuracy:", accuracy)
    #print("considered words:", totalwords)

def get_argparser():
    parser = argparse.ArgumentParser(description='quechua')
    parser.add_argument('--model', type=str, required=True)
    parser.add_argument('--randomvalidate', type=bool, required=False,
                        default=True)
    return parser

def main():
    parser = get_argparser()
    args = parser.parse_args()
    assert args.model in ["uniform", "mfs", "maxent"]
    model = args.model
    randomvalidate(model, cfd)

if __name__ == "__main__": main()