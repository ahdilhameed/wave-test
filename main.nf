process foo {

    container 'us-west1-docker.pkg.dev/first-artifact/first-artifact/ubuntu:latest'
    debug true

    script:
    """
    echo 'running test for nf tests'
    cat /etc/os-release
    """
}

workflow {
    foo()
}