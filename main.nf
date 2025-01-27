process foo {

    container 'us-west1-docker.pkg.dev/first-artifact/first-artifact/nextflow/examples:latest'
    debug true

    script:
    """
    cat /etc/os-release
    """
}

workflow {
    foo()
}