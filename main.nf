process foo {

    container 'us-west2-docker.pkg.dev/second-artifact/second-artifact-us-west2/debian:latest'
    debug true

    script:
    """
    echo 'running test for second-artifact'
    cat /etc/os-release
    """
}

workflow {
    foo()
}