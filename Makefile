# Create a Python virtualenv for ML
#
# Tong Zhang <zhangt@frib.msu.edu>
# 2023-02-23 14:41:26 EST
#

.PHONY: env env-pkg

ENV_DIR := ${HOME}/AP-ML_env
PIP_FLAGS := --upgrade

env:
	virtualenv $(ENV_DIR)
env-pkg:
	. $(ENV_DIR)/bin/activate && pip install --no-deps -r requirements.txt $(PIP_FLAGS)
#run:
#	. $(ENV_DIR)/bin/activate && python phantasy_rest/main.py
#
clean:
	/bin/rm -rf $(ENV_DIR)

