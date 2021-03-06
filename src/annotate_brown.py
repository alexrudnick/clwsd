#!/usr/bin/env python3

"""
Go over an annotated corpus file and add Brown cluster annotations for the words
in it.
"""
import argparse

import annotated_corpus

def get_argparser():
    parser = argparse.ArgumentParser(description='annotate_brown')
    parser.add_argument('--annotatedfn', type=str, required=True)
    parser.add_argument('--clusterfn', type=str, required=True)
    parser.add_argument('--featureprefix', type=str, required=True)
    parser.add_argument('--lemmas', type=bool, required=False)
    return parser

def load_word_to_cluster(clusterfn):
    out = {}
    with open(clusterfn) as infile:
        for line in infile:
            cluster, word, count = line.strip().split('\t')
            out[word] = cluster
    return out

def main():
    parser = get_argparser()
    args = parser.parse_args()

    word_to_cluster = load_word_to_cluster(args.clusterfn)
    corpus = annotated_corpus.load_corpus(args.annotatedfn)

    for sentence in corpus:
        for token in sentence:
            # use the full actual surface form for real, for now.
            w = token.lemma if args.lemmas else token.surface
            ## w = w.lower()
            if w in word_to_cluster:
                token.annotations.add(args.featureprefix + "=" +
                                      word_to_cluster[w])
            print(token)
        print()

if __name__ == "__main__": main()
