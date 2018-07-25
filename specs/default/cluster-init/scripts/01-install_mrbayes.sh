#!/bin/bash

set -ex
# Don't run if we've already expanded the MrBayes tarball
if [ -d /shared/scratch/mrbayes ]; then
    exit 0
fi
MRBAYES_VERSION=$(jetpack config mrbayes.version)

pushd /shared/scratch
jetpack download "mrbayes-${MRBAYES_VERSION}.tgz"
tar xvzf mrbayes-${MRBAYES_VERSION}.tgz
popd
