#!/opt/cycle/jetpack/system/embedded/bin/python -m pytest
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.
import os
import subprocess


def test_mrbayes():
    # Change directory to MrBayes example tree
    os.chdir('/shared/scratch/mrbayes')

    # Submit sample job, as cyclecloud user
    subprocess.check_call(['sudo', '-u', 'cyclecloud', 'qsub', 'run_mb.sub'])
