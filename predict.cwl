baseCommand: [/opt/SOAPfuse/entry.sh]
class: CommandLineTool
cwlVersion: v1.0
hints:
- {class: DockerRequirement, dockerOutputDirectory: /out, dockerPull: 'quay.io/smc-rna-challenge/zhanghj-8024234-fusion1:1.0.0'}
inputs:
- id: fastq1
  inputBinding: {position: 1}
  type: File
- id: fastq2
  inputBinding: {position: 2}
  type: File
outputs:
- id: output
  outputBinding: {glob: final}
  type: File
requirements:
- {class: InlineJavascriptRequirement}
