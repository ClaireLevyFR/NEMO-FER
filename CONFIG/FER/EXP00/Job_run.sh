# @ job_name = 36FER

##     Output listing location
# Fichier de sortie standard du travail  
# @ output = $(job_name).o$(jobid)
# @ error  = $(job_name).e$(jobid)
# @ job_type = parallel
# @ wall_clock_limit = 20:00:00
# @ total_tasks = 408
## @ total_tasks = 384
# @ environment = MP_PROCS=$(total_tasks)
# @ environment = NB_NPROC=$(total_tasks)
# @ as_limit = 3.5gb
# @ queue



umask 0022

CONFIG_DIR=/workgpfs/rech/omr/romr001/AGRIF_LIM3/3_6_STABLE_FORFER/NEMOGCM/CONFIG/FER/EXP00
RUN_DIR=$WORKDIR/3_6_FER
CLAUDE_FORCING_DIR=/workgpfs/rech/omr/romr010/DATA_FORCING/DFS5.1.2/
CLAUDE_WEIGHTS_DIR=/workgpfs/rech/omr/romr010/TMPDIR_FER-BCTFE04



cd $RUN_DIR
echo "RUN directory " `pwd`
# Get input forcing and weights file
# coordinates
ln -s $CONFIG_DIR/coordinates_ORCA_R05.nc            coordinates.nc
ln -s $CONFIG_DIR/1_coordinates_ORCA_R05.nc          1_coordinates.nc
ln -s $CONFIG_DIR/2_coordinates_ORCA_R05.nc          2_coordinates.nc
# Bathymeter
ln -s $CONFIG_DIR/bathy_ORCA05_update_CT23112013.nc  bathy_meter.nc
ln -s $CONFIG_DIR/1_bathy_ORCA05_JD28062011.nc       1_bathy_meter.nc
ln -s $CONFIG_DIR/2_bathy_meter.nc                   2_bathy_meter.nc
# Levitus for init and damping
# Temperature
ln -s $CONFIG_DIR/Levitus_T_ORCA05.nc                Levitus_T_ORCA05.nc
ln -s $CONFIG_DIR/1_Levitus_T_ORCA05.nc              1_Levitus_T_ORCA05.nc
ln -s $CONFIG_DIR/2_Levitus_T_ORCA05.nc              2_Levitus_T_ORCA05.nc
# Salinity
ln -s $CONFIG_DIR/Levitus_S_ORCA05.nc                Levitus_S_ORCA05.nc
ln -s $CONFIG_DIR/1_Levitus_S_ORCA05.nc              1_Levitus_S_ORCA05.nc
ln -s $CONFIG_DIR/2_Levitus_S_ORCA05.nc              2_Levitus_S_ORCA05.nc

ln -s $CONFIG_DIR/Levitus_ORCA05_sss_1m.nc           Levitus_ORCA05_sss_1m.nc
ln -s $CONFIG_DIR/1_Levitus_ORCA05_sss_1m.nc           1_Levitus_ORCA05_sss_1m.nc
ln -s $CONFIG_DIR/2_Levitus_ORCA05_sss_1m.nc           2_Levitus_ORCA05_sss_1m.nc
# Forcings
ln -s $CONFIG_DIR/runoff_ORCA05_22072011.nc          runoff_ORCA05_22072011.nc
ln -s $CONFIG_DIR/1_runoff_ORCA05_27072011.nc        1_runoff_ORCA05_27072011.nc
ln -s $CONFIG_DIR/2_runoff_ORCA05_22082013.nc        2_runoff_ORCA05_22082013.nc   
ln -s $CLAUDE_FORCING_DIR/drowned_u10_DFS5.1.2_y1979.nc      drowned_u10_DFS5.1.2_y1979.nc
ln -s $CLAUDE_FORCING_DIR/drowned_v10_DFS5.1.2_y1979.nc      drowned_v10_DFS5.1.2_y1979.nc
ln -s $CLAUDE_FORCING_DIR/drowned_radsw_DFS5.1.2_y1979.nc    drowned_radsw_DFS5.1.2_y1979.nc
ln -s $CLAUDE_FORCING_DIR/drowned_radlw_DFS5.1.2_y1979.nc    drowned_radlw_DFS5.1.2_y1979.nc
ln -s $CLAUDE_FORCING_DIR/drowned_t2_DFS5.1.2_y1979.nc       drowned_t2_DFS5.1.2_y1979.nc
ln -s $CLAUDE_FORCING_DIR/drowned_q2_DFS5.1.2_y1979.nc       drowned_q2_DFS5.1.2_y1979.nc
ln -s $CLAUDE_FORCING_DIR/drowned_precip_DFS5.1.2_y1979.nc   drowned_precip_DFS5.1.2_y1979.nc
ln -s $CLAUDE_FORCING_DIR/drowned_snow_DFS5.1.2_y1979.nc     drowned_snow_DFS5.1.2_y1979.nc
# Weights
ln -s $CLAUDE_WEIGHTS_DIR/ERNA_DFS5.1.2_reshape_bicub_u10.nc        ERNA_DFS5.1.2_reshape_bicub_u10.nc
ln -s $CLAUDE_WEIGHTS_DIR/1_ERNA_DFS5.1.2_reshape_bicub_u10.nc      1_ERNA_DFS5.1.2_reshape_bicub_u10.nc
ln -s $CLAUDE_WEIGHTS_DIR/2_ERNA_DFS5.1.2_reshape_bicub_u10.nc      2_ERNA_DFS5.1.2_reshape_bicub_u10.nc
ln -s $CLAUDE_WEIGHTS_DIR/ERNA_DFS5.1.2_reshape_bilin_precip.nc     ERNA_DFS5.1.2_reshape_bilin_precip.nc
ln -s $CLAUDE_WEIGHTS_DIR/1_ERNA_DFS5.1.2_reshape_bilin_precip.nc   1_ERNA_DFS5.1.2_reshape_bilin_precip.nc
ln -s $CLAUDE_WEIGHTS_DIR/2_ERNA_DFS5.1.2_reshape_bilin_precip.nc   2_ERNA_DFS5.1.2_reshape_bilin_precip.nc


ln -s $CLAUDE_WEIGHTS_DIR/ERNA_DFS5.1.2_reshape_bilin_rad.nc        ERNA_DFS5.1.2_reshape_bilin_rad.nc
ln -s $CLAUDE_WEIGHTS_DIR/1_ERNA_DFS5.1.2_reshape_bilin_rad.nc      1_ERNA_DFS5.1.2_reshape_bilin_rad.nc
ln -s $CLAUDE_WEIGHTS_DIR/2_ERNA_DFS5.1.2_reshape_bilin_rad.nc      2_ERNA_DFS5.1.2_reshape_bilin_rad.nc

ln -s $CLAUDE_WEIGHTS_DIR/ERNA_DFS5.1.2_reshape_bilin_t2.nc         ERNA_DFS5.1.2_reshape_bilin_t2.nc
ln -s $CLAUDE_WEIGHTS_DIR/1_ERNA_DFS5.1.2_reshape_bilin_t2.nc       1_ERNA_DFS5.1.2_reshape_bilin_t2.nc
ln -s $CLAUDE_WEIGHTS_DIR/2_ERNA_DFS5.1.2_reshape_bilin_t2.nc       2_ERNA_DFS5.1.2_reshape_bilin_t2.nc

ln -s $CLAUDE_WEIGHTS_DIR/ERNA_DFS5.1.2_reshape_bilin_rad.nc        ERNA_DFS5.1.2_reshape_bilin_rad.nc
ln -s $CLAUDE_WEIGHTS_DIR/1_ERNA_DFS5.1.2_reshape_bilin_rad.nc      1_ERNA_DFS5.1.2_reshape_bilin_rad.nc
ln -s $CLAUDE_WEIGHTS_DIR/2_ERNA_DFS5.1.2_reshape_bilin_rad.nc      2_ERNA_DFS5.1.2_reshape_bilin_rad.nc

# Get input namelist AGRIF and xml files
for file in $CONFIG_DIR/*namelist*_ref $CONFIG_DIR/*namelist*_cfg $CONFIG_DIR/*.xml $CONFIG_DIR/AGRIF_FixedGrids.in
do
    ln -s $file .
done

echo "DIR BEFORE EXEC"
#ls -l


echo '(4) Run the code'
echo '----------------'
# function for running OPA ans XIOS : it takes the number of procs and name of programs as argument
#    runcode_mpmd  nproc1  prog1 nproc2 prog2

runcode_mpmd() {
    set +vx
    rm -f ./zrunfile
    for n in $(seq 1 $1 ) ; do
          echo $2 >> ./zrunfile
    done
    for n in $(seq 1 $3 ) ; do
       echo $4 >> ./zrunfile
    done

   time poe -pgmmodel mpmd -cmdfile ./zrunfile
               }
set -vx
XIOS=1
NB_NPROC_IOS=24
NB_PROCS_NEMO=384
date
#echo "runcode_mpmd  $NB_PROCS_NEMO ./opa $NB_NPROC_IOS ./xios_server.exe" 
#if [ $NB_NPROC_IOS != 0 ] ; then

       runcode_mpmd  $NB_PROCS_NEMO ./opa $NB_NPROC_IOS ./xios_server.exe
   
# else
#       poe ./opa -procs $NB_PROCS_NEMO
#     echo "pouet"
# fi

echo "DIR AFTER EXEC"
ls -l



date
pwd


