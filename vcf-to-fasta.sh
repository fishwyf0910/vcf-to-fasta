# https://github.com/santiagosnchez/vcf2fasta

# The reference must be indexed using:
samtools faidx ref.fa

# And the VCF file should be tabix indexed and compressed:
bgzip my_vcf_file.vcf
tabix my_vcf_file.vcf.gz

conda activate base
python /data01/wangyf/software/vcf2fasta/vcf2fasta.py \
-f /data01/wangyf/project2/CyprinusCarpio/15.pop/7.annovar/new/genome/genome.fa \
-v fabp3.exon1.vcf.gz \
-g fabp3.gff \
-e exon \
-o out

## v2f/functions.py 替换该脚本，晓琦大师改好的！
## 结果中的 exon 是从0开始排，output文件夹中其他文件可删除（其中无变异）
## 如果要提 intron 或 utr 区域的序列，在 gff 中增加对应的行，并修改第9列中的信息
