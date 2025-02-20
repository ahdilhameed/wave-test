process foo {

    container 'us-west1-docker.pkg.dev/second-artifact/second-artifact/ubuntu:latest'
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