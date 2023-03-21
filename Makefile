# Create a Python virtualenv for ML
#
# Tong Zhang <zhangt@frib.msu.edu>
# 2023-02-23 14:41:26 EST
#

.PHONY: env env-pkg clean

ENV_DIR := ${HOME}/ap-ml_env
PIP_FLAGS := --upgrade --force-reinstall --no-cache-dir

env:
	virtualenv $(ENV_DIR)
env-pkg:
	. $(ENV_DIR)/bin/activate && pip install --no-deps -r requirements.txt $(PIP_FLAGS)

clean:
	/bin/rm -rf $(ENV_DIR)

