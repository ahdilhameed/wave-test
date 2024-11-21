#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

process HELLO {

    container 'us-west2-docker.pkg.dev/skilful-berm-44205-s2/ahdilwave/mysql:latest'
    debug true

    script:
    """
    echo 'Hello, World!'
    """
}

workflow {
    HELLO()
}