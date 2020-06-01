if [[ $_ == $0 ]]; then  
  echo "This script is meant to be sourced:"
  echo "  source $0"
  exit 0
fi

cd ..
conda deactivate ; conda deactivate 
cmsenv
conda activate OniaOpenCharmRun2ULenv
export PYTHONPATH=$CONDA_PREFIX/lib/python3.6/site-packages
cd OniaOpenCharmRun2ULAna
voms-proxy-init --rfc --voms cms
