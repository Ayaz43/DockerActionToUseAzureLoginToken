#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
ls /github/workspace/
echo "list $GITHUB_WORKSPACE/.github/workflows/.azure"
ls -a $GITHUB_WORKSPACE/.github/workflows/.azure
echo "list /home/runner/work/sampleWorkflow/sampleWorkflow/.azure"
ls -a /home/runner/work/sampleWorkflow/sampleWorkflow/.azure
