process foo {

    container 'us-west2-docker.pkg.dev/artifact2/artifact2/nextflow/examples:latest'
    debug true

    script:
    """
    echo 'Hello, World!'
    """
}

workflow {
    foo()
}