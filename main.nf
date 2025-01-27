process foo {

    container 'us-west1-docker.pkg.dev/second-artifact/second-artifact/nextflow/tests:latest'
    debug true

    script:
    """
    echo 'running test for alpine'
    cat /etc/os-release
    """
}

workflow {
    foo()
}