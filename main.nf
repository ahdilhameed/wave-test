nextflow.enable.dsl=2

process HELLO {
  container 'alpine:latest'
  
  output:
  stdout

  script:
  """
  echo 'Hello from Alpine!'
  """
}

workflow {
  HELLO()
}