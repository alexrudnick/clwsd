#!/usr/bin/env python3

def build_vocab(unlabeled_sequence, cfd, MINCOUNT):
    T = len(unlabeled_sequence)
    vocab = {}
    vocab[-2] = ['']
    vocab[-1] = ['']
    for t in range(T):
        symbol = unlabeled_sequence[t]
        # labels = set(cfd[symbol].samples()) - set(cfd[symbol].hapaxes())
        thevocab = []
        for (label, count) in cfd[symbol].items():
            if count >= MINCOUNT:
                thevocab.append(label)
            else: break
        vocab[t] = thevocab
        if not vocab[t]:
            vocab[t] = ["<untranslated>"]
    return vocab

def transition_logprob(lm, state, context):
    """... make sure we don't accidentally take the log of 0."""
    transition_prob = lm.prob(v, context)
    transition_penalty = (lm.logprob(v, context) if transition_prob
                                                 else (1000*1000))
    return transition_penalty
