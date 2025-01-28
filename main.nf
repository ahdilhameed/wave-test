process foo {

    container 'us-west1-docker.pkg.dev/separate-docker-cred/separate-docker-cred/ubuntu:latest'
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