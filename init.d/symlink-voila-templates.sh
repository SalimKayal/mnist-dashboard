#!/usr/bin/env bash
set -eou pipefail
VOILA_PKG=$(python -c "import voila; import os; print(os.path.dirname(voila.__file__))")
echo "Voila package at: $VOILA_PKG"
JUPYTER_DATA=$(jupyter --data-dir)
echo "Jupyter data at: $JUPYTER_DATA"
ln -s "$VOILA_PKG/../../../share/jupyter/voila" "$JUPYTER_DATA/voila"
