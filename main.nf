process foo {

    container 'us-west2-docker.pkg.dev/second-artifact/second-artifact-us-west2/bash:latest'
    debug true

    script:
    """
    echo 'running test for second-artifact'
    which bash
    """
}

workflow {
    foo()
}