nextflow run nf-core/ampliseq \
  -profile docker \
  --input "samplesheet.tsv" \
  --FW_primer CCTACGGGAGGCAGCAG \
  --RV_primer CCTAATCTATGGGACCATCAG \
  --outdir "./results" \
  --metadata 'metadata.tsv' \
  --max_cpus 2 \
  --trunc_qmin 20 \
  --max_memory '4.GB' \
  --single_end \
  --min_frequency 2 \
  -resume \
  --skip_alpha_rarefaction \
  --skip_ancom \
&& echo -e "======\n\n	      nf-ampliseq TEST SUCCESSFUL	\n\n======"
