nextflow.enable.dsl=2

process HELLO {
  container 'ubuntu:latest'
  
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