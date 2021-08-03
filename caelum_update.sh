#commands being executed will be output to the terminal

#These replacements should be one to one, mostly macroes, typedefs, and removals
grep -rl --include \*.h --include \*.c "TRUE" . | xargs -t sed -i 's/TRUE/true/g'
grep -rl --include \*.h --include \*.c "FALSE" . | xargs -t sed -i 's/FALSE/false/g'
grep -rl --include \*.h --include \*.c "boolean" . | xargs -t sed -i 's/boolean/bool/g'
grep -rl --include \*.h --include \*.c "CFE_SB_CMD_HDR_SIZE" . | xargs -t sed -i 's/CFE_SB_CMD_HDR_SIZE/sizeof(CFE_MSG_CommandHeader_t)/g'
grep -rl --include \*.h --include \*.c "CFE_SB_TLM_HDR_SIZE" . | xargs -t sed -i 's/CFE_SB_TLM_HDR_SIZE/sizeof(CFE_MSG_TelemetryHeader_t)/g'
grep -rl --include \*.h --include \*.c "CFE_ES_APP_ERROR" . | xargs -t sed -i 's/CFE_ES_APP_ERROR/CFE_ES_RunStatus_APP_ERROR/g'
grep -rl --include \*.h --include \*.c "CFE_ES_APP_RUN" . | xargs -t sed -i 's/CFE_ES_APP_RUN/CFE_ES_RunStatus_APP_RUN/g'
grep -rl --include \*.h --include \*.c "CFE_EVS_ERROR" . | xargs -t sed -i 's/CFE_EVS_ERROR/CFE_EVS_EventType_ERROR/g'
grep -rl --include \*.h --include \*.c "CFE_EVS_INFORMATION" . | xargs -t sed -i 's/CFE_EVS_INFORMATION/CFE_EVS_EventType_INFORMATION/g'
grep -rl --include \*.h --include \*.c "CFE_EVS_BINARY_FILTER" . | xargs -t sed -i 's/CFE_EVS_BINARY_FILTER/CFE_EVS_EventFilter_BINARY/g'
grep -rl --include \*.h --include \*.c "CFE_EVS_DEBUG" . | xargs -t sed -i 's/CFE_EVS_DEBUG/CFE_EVS_EventType_DEBUG/g'
grep -rl --include \*.h --include \*.c "CFE_SB_MsgPtr_t" . | xargs -t sed -i 's/CFE_SB_MsgPtr_t/CFE_MSG_Message_t */g'
grep -rl --include \*.h --include \*.c "CFE_SB_Msg_t" . | xargs -t sed -i 's/CFE_SB_Msg_t/CFE_MSG_Message_t/g'
grep -rl --include \*.h --include \*.c "CFE_ES_RegisterChildTask();" . | xargs -t sed -i 's/CFE_ES_RegisterChildTask();//g'
grep -rl --include \*.h --include \*.c "CFE_ES_RegisterApp();" . | xargs -t sed -i 's/CFE_ES_RegisterApp();//g'

#These replacements require changes to the parameters passed in, so the replacement includes the function prototype to allow the user to quickly make parameter changes
grep -rl --include \*.h --include \*.c "CFE_SB_GetTotalMsgLength" . | xargs -t sed -i 's/CFE_SB_GetTotalMsgLength(\(.*\))/CFE_MSG_GetSize(\CFE_MSG_Message_t *MsgPtr, \CFE_MSG_Size_t *Size)/g'
grep -rl --include \*.h --include \*.c "CFE_SB_SetTotalMsgLength" . | xargs -t sed -i 's/CFE_SB_SetTotalMsgLength(\(.*\), \(.*\))/CFE_MSG_SetSize(\CFE_MSG_Message_t *MsgPtr, \CFE_MSG_Size_t Size)/g'
grep -rl --include \*.h --include \*.c "CFE_SB_GetMsgId" . | xargs -t sed -i 's/CFE_SB_GetMsgId(\(.*\))/CFE_MSG_GetMsgId(\CFE_MSG_Message_t *MsgPtr, \CFE_SB_MsgId_t *MsgId)/g'
grep -rl --include \*.h --include \*.c "CFE_SB_GetCmdCode" . | xargs -t sed -i 's/CFE_SB_GetCmdCode(\(.*\))/CFE_MSG_GetFcnCode(\CFE_MSG_Message_t *MsgPtr, \CFE_MSG_FcnCode_t *FcnCode)/g'
grep -rl --include \*.h --include \*.c "CFE_SB_SetCmdCode" . | xargs -t sed -i 's/CFE_SB_SetCmdCode(\(.*\), \(.*\))/CFE_MSG_SetFcnCode(\CFE_MSG_Message_t *MsgPtr, \CFE_MSG_FcnCode_t FcnCode)/g'
grep -rl --include \*.h --include \*.c "CFE_SB_InitMsg" . | xargs -t sed -i 's/CFE_SB_InitMsg(\(.*\), \(.*\), \(.*\), \(.*\))/CFE_MSG_Init(\CFE_MSG_Message_t *MsgPtr, \CFE_SB_MsgId_t MsgId, \CFE_MSG_Size_t Size)/g'
grep -rl --include \*.h --include \*.c "CFE_SB_SendMsg" . | xargs -t sed -i 's/CFE_SB_SendMsg(\(.*\))/CFE_SB_TransmitMsg(\CFE_MSG_Message_t *MsgPtr, \bool IncrementSequenceCount)/g'
grep -rl --include \*.h --include \*.c "CFE_SB_RcvMsg" . | xargs -t sed -i 's/CFE_SB_RcvMsg(\(.*\), \(.*\), \(.*\))/CFE_SB_ReceiveBuffer(\CFE_SB_Buffer_t **BufPtr, \CFE_SB_PipeId_t PipeId, \int32 TimeOut)/g'
grep -rl --include \*.h --include \*.c "OS_open" . | xargs -t sed -i 's/OS_open(\(.*\), \(.*\), \(.*\))/OS_OpenCreate(osal_id_t *filedes, char *path, OS_FILE_FLAG_NONE, int32 access_mode)/g'
grep -rl --include \*.h --include \*.c "OS_create" . | xargs -t sed -i 's/OS_create(\(.*\), \(.*\), \(.*\))/OS_OpenCreate(osal_id_t *filedes, char *path, OS_FILE_FLAG_CREATE | OS_FILE_FLAG_TRUNCATE, int32 access_mode)/g'
grep -rl --include \*.h --include \*.c "CCSDS_RD_SID" . | xargs -t sed -i 's/CCSDS_RD_SID(\(.*\))/CFE_MSG_GetMsgId(CFE_MSG_Message_t *MsgPtr, CFE_SB_MsgId_t *MsgId)/g'
grep -rl --include \*.h --include \*.c "CCSDS_RD_LEN" . | xargs -t sed -i 's/CCSDS_RD_LEN(\(.*\))/CFE_MSG_GetSize(CFE_MSG_Message_t *MsgPtr, CFE_MSG_Size_t *Size)/g'

