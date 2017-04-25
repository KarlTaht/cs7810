#!/usr/bin/env bash

#Custom Cache Hierarchy
build/X86/gem5.opt configs/hmc_configs/se.py \
	--cmd=tests/test-progs/hello/bin/x86/linux/hello \
	--cpu-type=DerivO3CPU \
	--num-cpus=4 \
	--caches \
	--private-l2-cache \
	--shared-l3-cache

