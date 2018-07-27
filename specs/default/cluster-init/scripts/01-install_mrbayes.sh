#!/bin/bash
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

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
