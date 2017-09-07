# for parallelism, go make -f <this file> -j <number of tasks to do
# simultaneously>

all: one two three four five six seven eight

one:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-gn --alignfn ~/terere/bibletools/output/bible.es-gn.align --annotatedfn ~/chipa/src/annotated/bible.es-gn.source.annotated --embeddings /space/clustering/word2vec-spanish-europarl-50.skipgram --embedding_dim 50  --mwes True --combination fullsent

two:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-gn --alignfn ~/terere/bibletools/output/bible.es-gn.align --annotatedfn ~/chipa/src/annotated/bible.es-gn.source.annotated --embeddings /space/clustering/word2vec-spanish-europarl-100.skipgram --embedding_dim 100  --mwes True --combination fullsent

three:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-gn --alignfn ~/terere/bibletools/output/bible.es-gn.align --annotatedfn ~/chipa/src/annotated/bible.es-gn.source.annotated --embeddings /space/clustering/word2vec-spanish-europarl-200.skipgram --embedding_dim 200  --mwes True --combination fullsent

four:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-gn --alignfn ~/terere/bibletools/output/bible.es-gn.align --annotatedfn ~/chipa/src/annotated/bible.es-gn.source.annotated --embeddings /space/clustering/word2vec-spanish-europarl-400.skipgram --embedding_dim 400  --mwes True --combination fullsent

five:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-gn --alignfn ~/terere/bibletools/output/bible.es-gn.align --annotatedfn ~/chipa/src/annotated/bible.es-gn.source.annotated --embeddings /space/clustering/word2vec-spanish-wikipedia-50.skipgram --embedding_dim 50  --mwes True --combination fullsent

six:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-gn --alignfn ~/terere/bibletools/output/bible.es-gn.align --annotatedfn ~/chipa/src/annotated/bible.es-gn.source.annotated --embeddings /space/clustering/word2vec-spanish-wikipedia-100.skipgram --embedding_dim 100  --mwes True --combination fullsent

seven:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-gn --alignfn ~/terere/bibletools/output/bible.es-gn.align --annotatedfn ~/chipa/src/annotated/bible.es-gn.source.annotated --embeddings /space/clustering/word2vec-spanish-wikipedia-200.skipgram --embedding_dim 200  --mwes True --combination fullsent

eight:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-gn --alignfn ~/terere/bibletools/output/bible.es-gn.align --annotatedfn ~/chipa/src/annotated/bible.es-gn.source.annotated --embeddings /space/clustering/word2vec-spanish-wikipedia-400.skipgram --embedding_dim 400  --mwes True --combination fullsent