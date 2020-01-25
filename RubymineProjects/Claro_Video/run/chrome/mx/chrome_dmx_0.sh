#!/bin/bash
##!/usr/bin/env bash

export ENVIRON=PROD
export COUNT=MX
export TAG=new0
export BROW=chrome
export SPEED=fast

# Speed of time for global executions
# Fast
# Medium
# Slow

# profiles

#web-anon
#web-reg
#web-rega
#web-mem
#web-deg

cd ../../..
cd global/

cucumber -p web-1 $1 $2 $3 $4
