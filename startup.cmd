set_requestfile_path("$($(MODULE)_DIR)db")

# tucsenConfig(const char *portName, int cameraId, int maxBuffers,
#              size_t maxMemory, int priority, int stackSize)
tucsenConfig("$(PORT)", "$(CAM_ID=0)")

dbLoadRecords("tucsen.template",   "P=$(PREFIX),R=$(RECORD=cam1:),PORT=$(PORT),ADDR=0,TIMEOUT=1")

set_pass0_restoreFile("tucsen_settings$(N=1).sav")
set_pass1_restoreFile("tucsen_settings$(N=1).sav")

afterInit create_monitor_set,"tucsen_settings.req",30,"P=$(PREFIX),R=$(RECORD=cam1:)","tucsen_settings$(N=1).sav"
