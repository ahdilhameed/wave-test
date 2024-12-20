process foo {

    container 'us-west2-docker.pkg.dev/skilful-berm-442205-s2/ahdilwave/nextflow/examples:latest'
    debug true

    script:
    """
    echo 'Hello, World from Project 1!'
    """
}

process bar {

    container 'us-west2-docker.pkg.dev/artifact2/artifact2/nextflow/examples:latest'
    debug true

    script:
    """
    echo 'Hello, World from Project 2!'
    """
}

workflow {
    foo()
    bar()
}