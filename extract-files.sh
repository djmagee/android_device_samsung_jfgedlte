#!/bin/sh

set -e

export DEVICE=jfgedlte
export VENDOR=samsung
./../jf-common/extract-files.sh $@
