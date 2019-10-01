/programs/sambamba-0.6.7/sambamba \
view -h -t 8 -s 0.1 -f bam --subsampling-seed=1 \
BC1-L4LC_GTGAAA_R1_trimmed.fq.gz.Aligned.sortedByCoord.out.bam -o subSamp.bam


FACTOR=$(samtools idxstats $1 | cut -f3 | awk -v COUNT=$2 'BEGIN {total=0} {total += $1} END {print COUNT/total}')