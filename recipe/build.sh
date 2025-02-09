#!/bin/bash

set -e

${PYTHON} -m pip install -vv --no-deps --no-build-isolation tensorflow_metadata-${PKG_VERSION}-py3-none-any.whl
# Remove the strict protobuf requirement, conda will manage it
sed -i 's/^Requires-Dist: protobuf.*/Requires-Dist: protobuf/' ${SP_DIR}/tensorflow_metadata-${PKG_VERSION}.dist-info/METADATA
