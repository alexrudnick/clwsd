# for parallelism, go make -f <this file> -j <number of tasks to do
# simultaneously>

all: one two three four five six seven eight

one:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-qu --alignfn ~/terere/bibletools/output/bible.es-qu.align --annotatedfn ~/chipa/src/annotated/bible.es-qu.source.annotated --embeddings /space/clustering/word2vec-spanish-europarl-50.cbow --embedding_dim 50 --combination pyramid

two:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-qu --alignfn ~/terere/bibletools/output/bible.es-qu.align --annotatedfn ~/chipa/src/annotated/bible.es-qu.source.annotated --embeddings /space/clustering/word2vec-spanish-europarl-100.cbow --embedding_dim 100 --combination pyramid

three:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-qu --alignfn ~/terere/bibletools/output/bible.es-qu.align --annotatedfn ~/chipa/src/annotated/bible.es-qu.source.annotated --embeddings /space/clustering/word2vec-spanish-europarl-200.cbow --embedding_dim 200 --combination pyramid

four:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-qu --alignfn ~/terere/bibletools/output/bible.es-qu.align --annotatedfn ~/chipa/src/annotated/bible.es-qu.source.annotated --embeddings /space/clustering/word2vec-spanish-europarl-400.cbow --embedding_dim 400 --combination pyramid

five:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-qu --alignfn ~/terere/bibletools/output/bible.es-qu.align --annotatedfn ~/chipa/src/annotated/bible.es-qu.source.annotated --embeddings /space/clustering/word2vec-spanish-wikipedia-50.cbow --embedding_dim 50  --combination pyramid

six:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-qu --alignfn ~/terere/bibletools/output/bible.es-qu.align --annotatedfn ~/chipa/src/annotated/bible.es-qu.source.annotated --embeddings /space/clustering/word2vec-spanish-wikipedia-100.cbow --embedding_dim 100 --combination pyramid

seven:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-qu --alignfn ~/terere/bibletools/output/bible.es-qu.align --annotatedfn ~/chipa/src/annotated/bible.es-qu.source.annotated --embeddings /space/clustering/word2vec-spanish-wikipedia-200.cbow --embedding_dim 200 --combination pyramid

eight:
	python3 clwsd_experiment_embeddings.py --bitext ~/terere/bibletools/output/bible.es-qu --alignfn ~/terere/bibletools/output/bible.es-qu.align --annotatedfn ~/chipa/src/annotated/bible.es-qu.source.annotated --embeddings /space/clustering/word2vec-spanish-wikipedia-400.cbow --embedding_dim 400 --combination pyramid
