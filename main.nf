process foo {

    container 'us-west2-docker.pkg.dev/skilful-berm-442205-s2/ahdilwave/nextflow/examples:latest'
    debug true

    script:
    """
    echo 'Hello, World!'
    """
}

workflow {
    foo()
}