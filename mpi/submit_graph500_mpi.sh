#!/bin/sh
#
# send job
GROUP=t2g-acls2012
CMDNAME=`basename $0`
if [ $# -ne 2 ]; then
     echo "Usage: $CMDNAME program number_nodes"
     exit 1
fi
PROG=$1
NPROC=$2
t2sub -v PROG=${PROG},NPROC=${NPROC} -W group_list=$GROUP -j oe -q S -l walltime=23:00:00 -l select=${NPROC}:mpiprocs=1:ncpus=12:mem=40gb -l place=scatter graph500_run.sh