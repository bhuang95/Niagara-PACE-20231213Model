#!/bin/bash

TASK="/home/Bo.Huang/Projects/PACE-20231213Model/scripts/HPSS/toHPSS/BakCycles/job_bak_cycling_n2h_PACE.sh"
EXPS="
ModelSpinup_20240315
"
#AeroReanl_EP4_FreeRun_NoSPE_YesSfcanl_v15_0dz0dp_1M_C96_202007
#AeroReanl_EP4_FreeRun_NoSPE_YesSfcanl_v14_0dz0dp_1M_C96_201801
#AeroReanl_EP4_AeroDA_YesSPEEnKF_YesSfcanl_v14_0dz0dp_41M_C96_201801
#AeroReanl_EP4_FreeRun_NoSPE_YesSfcanl_v15_0dz0dp_1M_C96_202007
FIELDS="
dr-data
"
#dr-data

for EXP in ${EXPS}; do
for FIELD in ${FIELDS}; do
echo "Running N2H-${EXP}-${FIELD}"
${TASK} ${EXP} ${FIELD}
done
done
