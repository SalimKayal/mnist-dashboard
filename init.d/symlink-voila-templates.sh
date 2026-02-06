#!/usr/bin/env bash
VOILA_PKG=$(python -c "import voila; import os; print(os.path.dirname(voila.__file__))")
echo "Voila package at: $VOILA_PKG"
if [ -n "$RENKU_MOUNT_DIR" ]; then
  JUPYTER_DATA="${RENKU_MOUNT_DIR}/.local/share/jupyter/"
else
  JUPYTER_DATA=$(jupyter --data-dir)
fi
echo "Jupyter data at: $JUPYTER_DATA"
ln -sf "$VOILA_PKG/../../../../share/jupyter/voila" "$JUPYTER_DATA"
