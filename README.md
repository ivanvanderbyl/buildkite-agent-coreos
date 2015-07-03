# buildkite-agent-coreos

Docker image for running Buildkite workers on CoreOS.

# Why and How

Basically this allows you to launch a build cluster with only the provided `cloud-config.yml`, which will work on EC2, DigitalOcean, Azure, and Google Compute. CoreOS will ensure your build agents are always running, and this image will give them access to the underlying Docker server to launch builds in isolated docker containers, which will be destroyed after each build.

All build containers are treated as though they are immutable.

# Getting going

