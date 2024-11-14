#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

process HELLO {
    container 'ubuntu:latest'

    output:
    stdout

    script:
    """
    echo 'Hello, World!'
    """
}

workflow {
    HELLO()
    HELLO.out.view()
}