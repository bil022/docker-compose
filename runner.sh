#!/bin/bash

ip=`ipconfig getifaddr en0`

echo "concurrent = 1
check_interval = 0

[session_server]
  session_timeout = 1800

[[runners]]
  name = \"MacBookAir.lan\"
  url = \"http://$ip\"
  token = \"glrt-bzoxCnA6MQp0OjMKdToylWpKDdklC-Cv5IJ6BLxqNBA.171esusuu\"
  executor = \"docker\"
  tag_list = [\"docker\"]

  [runners.docker]
    tls_verify = false
    image = \"docker:latest\"
    privileged = true
    disable_entrypoint_overwrite = false
    oom_kill_disable = false
    disable_cache = false
    volumes = [
      \"/var/run/docker.sock:/var/run/docker.sock\",  # Access host Docker daemon
      \"/cache\"
    ]
    shm_size = 0

  [runners.cache]
    [runners.cache.s3]
    [runners.cache.gcs]
    [runners.cache.azure]
" > ~/.gitlab-runner/config.toml
gitlab-runner run
