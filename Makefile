SHELL := /usr/bin/env bash
DEVENV_SRC := ../devenv

# OVERRIDE_* is read when python.mk is parsed, so set it above the includes.
# OVERRIDE_BUILD = 1
# OVERRIDE_PUBLISH = 1

# include cfg/django.mk
# include cfg/frontend.mk
include cfg/python.mk
# include cfg/ci.mk
# include cfg/gha_std.mk
# include cfg/docker.mk
# include cfg/docs.mk
include cfg/node.mk
include cfg/node_root.mk
include cfg/common.mk
include cfg/help.mk

.PHONY: all
