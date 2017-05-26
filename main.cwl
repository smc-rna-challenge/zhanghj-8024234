class: Workflow
cwlVersion: v1.0
dct:creator: {'@id': 'http://orcid.org/0000-0002-7681-6415', 'foaf:mbox': zhanghj@synapse.org,
  'foaf:name': zhanghj}
doc: 'SMC-RNA challenge fusion detection submission

  '
hints: []
id: main
inputs:
- {id: TUMOR_FASTQ_1, type: File}
- {id: TUMOR_FASTQ_2, type: File}
name: main
outputs:
- {id: OUTPUT, outputSource: predict/output, type: File}
steps:
- id: predict
  in:
  - {id: fastq1, source: TUMOR_FASTQ_1}
  - {id: fastq2, source: TUMOR_FASTQ_2}
  out: [output]
  run: predict.cwl
