#!/usr/bin/env bash

#CPU Types
#TimingSimpleCPU
#DerivO3CPU


#Custom Cache Hierarchy
build/ARM/gem5.opt configs/hmc_configs/se.py \
	--cmd=tests/test-progs/hello/bin/arm/linux/hello \
	--cpu-type=AtomicSimpleCPU \
	--num-cpus=1 \
	--caches \
	--private-l2-cache \
	--shared-l3-cache \
	--mem-type=HMC_2500_1x32 \
	--mem-size=4GB \
	--hmc-cache

