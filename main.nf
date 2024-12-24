process foo {

    container 'us-west2-docker.pkg.dev/artifact-test-443723/artifact-test/nextflow/examples:latest'
    debug true

    script:
    """
    echo 'Hello, World!'
    """
}

workflow {
    foo()
}