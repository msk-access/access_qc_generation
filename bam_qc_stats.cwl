class: Workflow
cwlVersion: v1.0
id: bam_qc_stats
label: bam_qc_stats
$namespaces:
  sbg: 'https://www.sevenbridges.com/'
inputs:
  - id: input
    type: File
    'sbg:x': -642.487060546875
    'sbg:y': -142.551025390625
  - id: bait_intervals
    type: File
    'sbg:x': -636.1094970703125
    'sbg:y': 14.336734771728516
  - id: referece_fasta
    type: File
    'sbg:x': -634.8340454101562
    'sbg:y': 175.051025390625
  - id: gene_list
    type: File
    'sbg:x': -632.2830200195312
    'sbg:y': 312.79693603515625
outputs:
  - id: hs_metrics_file
    outputSource:
      - picard_hsmetrics_2_8_1/hs_metrics_file
    type: File?
    'sbg:x': 410.7783508300781
    'sbg:y': -69.20183563232422
  - id: alignment_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/alignment_summary_metrics
    type: File?
    'sbg:x': 407.33837890625
    'sbg:y': -246.0542449951172
  - id: bait_bias_detail_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/bait_bias_detail_metrics
    type: File?
    'sbg:x': 412.89154052734375
    'sbg:y': -347.9154052734375
  - id: bait_bias_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/bait_bias_summary_metrics
    type: File?
    'sbg:x': 406.8937072753906
    'sbg:y': -436.60736083984375
  - id: base_distribution_by_cycle_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/base_distribution_by_cycle_metrics
    type: File?
    'sbg:x': 405.4989013671875
    'sbg:y': -519.9609375
  - id: error_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/error_summary_metrics
    type: File?
    'sbg:x': 404
    'sbg:y': -619.6095581054688
  - id: gc_bias_detail_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/gc_bias_detail_metrics
    type: File?
    'sbg:x': 400.8343811035156
    'sbg:y': -748.3134155273438
  - id: gc_bias_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/gc_bias_pdf
    type: File?
    'sbg:x': 399.7497863769531
    'sbg:y': -865.4500732421875
  - id: gc_bias_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/gc_bias_summary_metrics
    type: File?
    'sbg:x': 597.146728515625
    'sbg:y': -666.968505859375
  - id: insert_size_histogram_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/insert_size_histogram_pdf
    type: File?
    'sbg:x': 596.0621337890625
    'sbg:y': -791.6973266601562
  - id: insert_size_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/insert_size_metrics
    type: File?
    'sbg:x': 597.146728515625
    'sbg:y': -927.2721557617188
  - id: pre_adapter_detail_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/pre_adapter_detail_metrics
    type: File?
    'sbg:x': 596.0621337890625
    'sbg:y': -1062.8470458984375
  - id: pre_adapter_summary_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/pre_adapter_summary_metrics
    type: File?
    'sbg:x': 163.30726623535156
    'sbg:y': -738.552001953125
  - id: quality_by_cycle_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_by_cycle_metrics
    type: File?
    'sbg:x': 156.79966735839844
    'sbg:y': -889.3112182617188
  - id: quality_by_cycle_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_by_cycle_pdf
    type: File?
    'sbg:x': 142.69989013671875
    'sbg:y': -1016.2092895507812
  - id: quality_distribution_metrics
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_distribution_metrics
    type: File?
    'sbg:x': 122.09251403808594
    'sbg:y': -1147.4456787109375
  - id: quality_distribution_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/quality_distribution_pdf
    type: File?
    'sbg:x': 115.58492279052734
    'sbg:y': -1277.590087890625
  - id: base_distribution_by_cycle_pdf
    outputSource:
      - picard_collectmultiplemetrics_2_8_1/base_distribution_by_cycle_pdf
    type: File?
    'sbg:x': 617.915283203125
    'sbg:y': -494.55633544921875
steps:
  - id: picard_collectmultiplemetrics_2_8_1
    in:
      - id: input
        source: input
    out:
      - id: alignment_summary_metrics
      - id: bait_bias_detail_metrics
      - id: bait_bias_summary_metrics
      - id: base_distribution_by_cycle_metrics
      - id: base_distribution_by_cycle_pdf
      - id: error_summary_metrics
      - id: gc_bias_detail_metrics
      - id: gc_bias_pdf
      - id: gc_bias_summary_metrics
      - id: insert_size_histogram_pdf
      - id: insert_size_metrics
      - id: pre_adapter_detail_metrics
      - id: pre_adapter_summary_metrics
      - id: quality_by_cycle_metrics
      - id: quality_by_cycle_pdf
      - id: quality_distribution_metrics
      - id: quality_distribution_pdf
    run: >-
      cwl-commandlinetools/picard_collectmultiplemetric_2.8.1/picard_collectmultiplemetrics_2-8-1.cwl
    label: picard_collectmultiplemetrices_2.8.1
    'sbg:x': -52.132652282714844
    'sbg:y': -440.153076171875
  - id: picard_hsmetrics_2_8_1
    in:
      - id: bait_intervals
        source: bait_intervals
      - id: input
        source: input
    out:
      - id: hs_metrics_file
    run: cwl-commandlinetools/picard_hsmetrics_2.8.1/picard_hsmetrics_2.8.1.cwl
    label: picard_hsmetrics_2.8.1
    scatter:
      - per_target_coverage
    'sbg:x': -8.439092636108398
    'sbg:y': -87.82716369628906
  - id: waltz_pileupmetrics
    in:
      - id: bam
        source: input
      - id: referece_fasta
        source: referece_fasta
      - id: bed_file
        source: bait_intervals
    out:
      - id: pileup
      - id: pileup_without_duplicates
      - id: intervals
      - id: intervals_without_duplicates
    run: >-
      cwl-commandlinetools/waltz_pileupmatrices_3.1.1/waltz_pileupmatrices_3.1.1.cwl
    label: waltz_pileupmetrics
    'sbg:x': -17.31117057800293
    'sbg:y': 539.4144897460938
  - id: waltz_count_reads
    in:
      - id: bam
        source: input
      - id: gene_list
        source: gene_list
      - id: bed_file
        source: bait_intervals
    out:
      - id: covered_regions
      - id: fragment_sizes
      - id: read_counts
    run: cwl-commandlinetools/waltz_count_reads_3.1.1/waltz_count_reads_3.1.1.cwl
    label: waltz_count_reads
    'sbg:x': -14.556071281433105
    'sbg:y': 189.3800811767578
requirements:
  - class: ScatterFeatureRequirement
