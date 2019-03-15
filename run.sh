#fly -t turorial login -c http://127.0.0.1:8080
fly -t turorial validate-pipeline --config ci/pipelines/pipeline.yml
fly -t turorial set-pipeline -p turorial-pipeline -c ci/pipelines/pipeline.yml --load-vars-from=credentials.yml
fly -t turorial unpause-pipeline -p turorial-pipeline
fly -t turorial trigger-job -w -j turorial-pipeline/first-job